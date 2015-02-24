using UnityEngine;
using System.Collections;

//If this gets destroyed the entire station is destroyed
public class MainReactor : Room
{

	public MainReactor()
	{

		door_North	=1;
		door_South	=1;
		door_West	=1;
		door_East	=1;	
	}

	protected override void AdditionaL_Room_Setup()
	{

		//Spawn 2 Peeps
		station.SpawnPeep(globalPos_X,globalPos_Y);
		station.SpawnPeep(globalPos_X,globalPos_Y);

		Rectangle bounds;
		Quaternion room_Rotation;
		bounds = new Rectangle(10,10);
		
		//Place Object inside Room
		PowerReactor pr = new PowerReactor();
		room_Rotation = Quaternion.Euler(-180,0,0);
		pr.Setup(globalPos_X,globalPos_Y,room_Rotation,bounds);
		room_Objects.Add( pr   );


	}


}
