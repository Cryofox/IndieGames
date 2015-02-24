using UnityEngine;
using System.Collections;

//If this gets destroyed the entire station is destroyed
public class R_Radar : Room
{

	public R_Radar()
	{
		//Setup the Correct Nodes
		//Main Reactor has doors on ALL sides

		// 0 wall, 1 door, 2 airlock

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
		
	}


}
