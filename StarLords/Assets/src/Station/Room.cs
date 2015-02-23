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
	protected bool door_North=true;
	protected bool door_South=true;
	protected bool door_West=true;
	protected bool door_East=true;

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

		bool temp = door_East;

		door_East= door_North;
		door_North= door_West;
		door_West= door_South;
		door_South=temp;

		rotation *= Quaternion.Euler(0,0,-90);
	}


	public void Room_Rotate_Left()
	{	
		bool temp = door_East;

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

		//This is called by the Room incase other rooms have other functions they want to implement
		AdditionaL_Room_Setup();

		model_Room.transform.parent = station.stationTransform;

		//Now to Change the Parents of the objects
		for(int i=0; i< room_Objects.Count;i++)
			room_Objects[i].model_Object.transform.parent= station.stationTransform;
	}


	protected virtual void AdditionaL_Room_Setup()
	{}


}
