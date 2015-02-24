using UnityEngine;
using System.Collections;
using System.Collections.Generic;
//This is a Room that makes up a Station
public class Room 
{

	//The Position relative to the Stations Center
	int relativePosition_X;
	int relativePosition_Y;

	//Station the Room Belongs to
	protected Station station;


	//Can a peep PathFind through these Directions

	// 0 = Wall, 1 = Door, 2 = AirLock

	//AirLocked doors may not be blocked with a wall

	//Rules - Doors Must be placed against Doors
	//		- Airlocks Must not be placed against anything

	// 0 = Wall
	// 1 = Door
	// 2 = AirLock

	protected byte door_North	=0;
	protected byte door_South	=0;
	protected byte door_West	=0;
	protected byte door_East	=0;

	protected Quaternion rotation = Quaternion.Euler(0,0,0);




	protected List<Room_Object> room_Objects;
	protected GameObject model_Room;








	//Accessors
	public int relPos_X
	{
		get{return relativePosition_X;}
	}
	public int relPos_Y
	{
		get{return relativePosition_Y;}
	}


	//This should only be used on Rooms which have been Setup
	public float globalPos_X
	{
		get{
			if(model_Room!=null)
				return (int)(model_Room.transform.position.x);

			return -1;
			}
	}
	public float globalPos_Y
	{
		get{
			if(model_Room!=null)
				return (int)(model_Room.transform.position.y);

			return -1;
			}
	}


	//The Station the Room Belongs to, the X,Y, neighbourhood this object should
	//be placed on
	public Room()
	{}



	public void Room_Rotate_Right()
	{	

		byte temp = door_East;

		door_East= door_North;
		door_North= door_West;
		door_West= door_South;
		door_South=temp;

		rotation *= Quaternion.Euler(0,0,-90);
	}


	public void Room_Rotate_Left()
	{	
		byte temp = door_East;

		door_East= door_South;
		door_South= door_West;
		door_West= door_North;
		door_North=temp;

		rotation *= Quaternion.Euler(0,0,90);
	}

	//This is whats called by the Station to place rooms
	//TargetX/Y are the Offset from the Central node, such as -1, +2. etc.
	public void Room_Setup(Station station, int relX, int relY, int globX, int globY)
	{
		this.station= station;
		room_Objects = new List<Room_Object>();
		//UnityEngine.Debug.Log("Room Setup called");
		//Any code thats needed to initialize the Room
		//Such as Game Objects that Need to be placed inside, wall positioning
		relativePosition_X=relX;
		relativePosition_Y=relY;
		

		//Grab the Room
		model_Room = Resources.Load<GameObject>("GameObjects/Room_Objects/Room_Empty");
		//Create and Store the Room from the "World"
		model_Room = GameObject.Instantiate(model_Room,new Vector2(globX,globY), rotation) as GameObject;


		// Creates the Doors in the correct location for every room
		Door_Room_Setup();
		//This is called by the Room incase other rooms have other functions they want to implement
		AdditionaL_Room_Setup();

		model_Room.transform.parent = station.stationTransform;

		//Now to Change the Parents of the objects
		for(int i=0; i< room_Objects.Count;i++)
			room_Objects[i].model_Object.transform.parent= station.stationTransform;
	}


	protected virtual void AdditionaL_Room_Setup()
	{}


	protected virtual void Door_Room_Setup()
	{
		//Spawn 4 Walls
		Room_Object ro = null;
		Quaternion room_Rotation;
		//Remember to Set the Correct Rect in accordance with how a rectangle is oriented




		Rectangle bounds = new Rectangle(20,2);
		//Far Left Wall	
		if(door_West==0)
			ro =  new Wall();
		else if(door_West==1)
			ro =  new Door();				

		room_Rotation = Quaternion.Euler(-180,0,90);
		ro.Setup(globalPos_X-14,globalPos_Y,room_Rotation,bounds);
		room_Objects.Add( ro   );


		//Far Right Wall	
		if(door_East==0)
			ro =  new Wall();
		else if(door_East==1)
			ro =  new Door();	

		room_Rotation = Quaternion.Euler(-180,0,90);
		ro.Setup(globalPos_X+14,globalPos_Y,room_Rotation,bounds);
		room_Objects.Add( ro   );



		bounds = new Rectangle(2,20);
		//Far North Wall	
		if(door_North==0)
			ro =  new Wall();
		else if(door_North==1)
			ro =  new Door();	


		room_Rotation = Quaternion.Euler(-180,0,0);
		ro.Setup(globalPos_X,globalPos_Y+14,room_Rotation,bounds);
		room_Objects.Add( ro   );

		//Far South Wall	

		if(door_South==0)
			ro =  new Wall();
		else if(door_South==1)
			ro =  new Door();	

		room_Rotation = Quaternion.Euler(-180,0,0);
		ro.Setup(globalPos_X,globalPos_Y-14,room_Rotation,bounds);
		room_Objects.Add( ro   );		
	}	


}
