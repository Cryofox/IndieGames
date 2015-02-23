using UnityEngine;
using System.Collections;


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
			UnityEngine.Debug.Log("No neighbour for Target Location:" + x+","+y);
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

	//Helper Functions
	string CreateHashString(int x, int y)
	{
		return ( x+","+y); 
	}




	//Pathfinding From the Graph
	//Return the Rooms, because Global Values Change



}

