using UnityEngine;
using System.Collections;

//If this gets destroyed the entire station is destroyed
public class R_Radar : Room
{

	public R_Radar()
	{}

	protected override void AdditionaL_Room_Setup()
	{

		//Spawn 2 Peeps
		station.SpawnPeep(globalPos_X,globalPos_Y);
		station.SpawnPeep(globalPos_X,globalPos_Y);


		//Setup the Correct Nodes
		//Main Reactor has doors on ALL sides
		door_North=true;
		door_South=true;
		door_West=true;
		door_East=true;	




		//Spawn 4 Walls
		Door door;
		Quaternion room_Rotation;
		//Remember to Set the Correct Rect in accordance with how a rectangle is oriented
		Rectangle bounds = new Rectangle(20,2);

		//Far Left Wall	
		door =  new Door();	
		room_Rotation = Quaternion.Euler(-180,0,90);
		door.Setup(globalPos_X-14,globalPos_Y,room_Rotation,bounds);
		room_Objects.Add( door   );

		//Far Right Wall	
		door =  new Door();	
		room_Rotation = Quaternion.Euler(-180,0,90);
		door.Setup(globalPos_X+14,globalPos_Y,room_Rotation,bounds);
		room_Objects.Add( door   );

		bounds = new Rectangle(2,20);

		//Far North Wall	
		door =  new Door();	
		room_Rotation = Quaternion.Euler(-180,0,0);
		door.Setup(globalPos_X,globalPos_Y+14,room_Rotation,bounds);
		room_Objects.Add( door   );

		//Far South Wall	
		door =  new Door();	
		room_Rotation = Quaternion.Euler(-180,0,0);
		door.Setup(globalPos_X,globalPos_Y-14,room_Rotation,bounds);
		room_Objects.Add( door   );


/*
		bounds = new Rectangle(10,10);
		//Place Object inside Room
		PowerReactor pr = new PowerReactor();
		room_Rotation = Quaternion.Euler(-180,0,0);
		pr.Setup(globalPos_X,globalPos_Y,room_Rotation,bounds);
		room_Objects.Add( pr   );
*/

	}


}
