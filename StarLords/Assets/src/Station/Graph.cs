using UnityEngine;
using System.Collections;
using System.Collections.Generic;

//This is an ADT which is used to represent all Rooms within a Station
public class Graph {

	//Use HashIndex for O(1) indexing
	Hashtable node_Lookup;



	public Graph( )
	{
		node_Lookup= new Hashtable();
	}


	//Add a Node via relative offset x,y
	//Returns False if unable to add
	public bool AddNode(Room room, int x, int y)
	{
		//Check if a Node currently exists at location
		if( Node_Exists(x,y) )
		{
			UnityEngine.Debug.Log("A Room currently Exists at Target Location:" + x+","+y);
			return false;
		}
		//If its not the Central Tile, check for neighbours
		if( !(x==0 && y==0))
		{
			//Check if a Neighbouring Node exists
			if(Node_Exists( (x+1), (y)))
			{
				goto TrueRoutine;
			}
			if(Node_Exists( (x-1), (y)))
			{
				goto TrueRoutine;
			}
			if(Node_Exists( (x), (y+1)))
			{
				goto TrueRoutine;
			}
			if(Node_Exists( (x), (y-1)))
			{
				goto TrueRoutine;
			}

			//Not a single If broke out so neighbour could not be found
//			UnityEngine.Debug.Log("No neighbour for Target Location:" + x+","+y);
			return false;
		}


		TrueRoutine:
			node_Lookup.Add(CreateHashString(x,y), room);
			return true;
	}


	//Relative Offset X & Y, -1, 0 , 0,0 etc
	public bool Node_Exists(int x, int y)
	{
		if(node_Lookup[ CreateHashString(x,y) ] != null)
			return true;

		return false;
	}


	//Relative Offset X & Y, -1, 0 , 0,0 etc
	public bool Node_Exists(float x, float y)
	{
		return Node_Exists((int) x, (int) y);
	}


	//Helper Functions
	string CreateHashString(int x, int y)
	{
		return ( x+","+y); 
	}




	//Pathfinding From the Graph
	//Return the Rooms, because Global Values Change

	public List<Vector2> Get_OpenRoomLocations()
	{
		//Start from 0,
		int xCur = 0;
		int yCur = 0;

		List<Vector2> freeNodes  = new List<Vector2>();


		List<Vector2> traversedNeighbours = new List<Vector2>();
		List<Vector2> neighbours = new List<Vector2>();

		neighbours.Add( new Vector2(1,0));
		neighbours.Add( new Vector2(-1,0));		
		neighbours.Add( new Vector2(0,1));
		neighbours.Add( new Vector2(0,-1));

		while(neighbours.Count>0)
		{
			Vector2 currentNode= neighbours[0];
			neighbours.RemoveAt(0);

			if(!traversedNeighbours.Contains(currentNode))
				if(Node_Exists(currentNode.x,currentNode.y))
				{
					//Get its Neighbours
					neighbours.Add( new Vector2(currentNode.x+1,currentNode.y));
					neighbours.Add( new Vector2(currentNode.x-1,currentNode.y));		
					neighbours.Add( new Vector2(currentNode.x,currentNode.y+1));
					neighbours.Add( new Vector2(currentNode.x,currentNode.y-1));			
				}
				else
				{
					freeNodes.Add(currentNode);
				}

			traversedNeighbours.Add(currentNode);
		}
		return freeNodes;
	}

}

