using UnityEngine;
using System.Collections;
using System.Collections.Generic;
public class Station {





	//Graph used for Room Layout
	Graph nodeGraph;

	//List of all PEEPS belonging to this Station
	List<Peep> peepManager;



	Room center;

	public Transform stationTransform{

			get{
				return model_Station.transform;
			}
	}

	GameObject model_Station;

	public Station()
	{

		model_Station = new GameObject();
		model_Station.name= "Station XYZ";
		
		nodeGraph = new Graph();
		peepManager = new  List<Peep>();
		//This will Be replaced with a Reactor
		center = new MainReactor();
		AddRoom(center,0,0);


	}


	//This will handle all Upkeep for adding a room to the station
	public bool AddRoom(Room room, int relX, int relY)
	{
		//First the Relative Position needs to be identified by offsetting with the Center room

		//Add the Node and if it was successfull Setup the room, which creates it in the "world"
		if(nodeGraph.AddNode(room,relX,relY))
		{
			room.Room_Setup(this,relX,relY,    relX*28,    relY*28  );
			return true;
		}

		return false;
	}


	//Spawn a Peep at the Exact Position
	public void SpawnPeep(float globX, float globY)
	{
		Peep newRecruit = new Peep(this, globX,globY);
		peepManager.Add(newRecruit);
	}

	public void Update(float timeElapsed)
	{
		//Updateing

		//Updates all peeps Brains
		for( int i =0; i < peepManager.Count; i++)
			peepManager[i].Update(timeElapsed);
	}

	//Wrapper for the Graph Node
	//This will return a list of Rooms?  ... what if a room is "destroyed" ?
	//Returns Rel Pos?
	void FindPath( Vector2 startPos, Vector2 targetPos)
	{
		// First Dilute the values to Room Expected Values

		// Re-orient to gameobject within the room. The previous Target Pos
	}

	bool DoesRoomExist(float globX, float globY)
	{
		float x=0;
		float y=0;

			if( globX >= 0)
				x = (( globX - 14) /28) +1;
			else
				x = (( globX + 14) /28) -1;

			if( globY >= 0)
				y = ((globY - 14) /28) +1;
			else
				y = ((globY + 14) /28) -1;

		return nodeGraph.Node_Exists((int)x, (int)y);
	}



	public List<Vector2> Get_OpenRoomLocations()
	{
		return nodeGraph.Get_OpenRoomLocations();
	}


}
