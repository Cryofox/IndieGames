using UnityEngine;
using System.Collections;

public class Peep 
{

	//The Peep to Spawn, 
	/*Params: 
	
		The station this peep belongs to
		

	*/
	GameObject model_Peep;

	Quaternion rotation;

	float rotationSpeed=60;

	float runSpeed=30;
	public Peep(Station station,float globX, float globY)
	{
		rotation=  Quaternion.Euler(-90,0,0);
		//Grab the Peep
		model_Peep = Resources.Load<GameObject>("GameObjects/Peep_without_Controllers");
		//Create and Store the Room from the "World"
		model_Peep = GameObject.Instantiate(model_Peep,new Vector2(globX,globY), rotation) as GameObject;


		

	}


	//The Brain of the Peep :D
	public void Update(float timeElapsed)
	{
		//A Tile is 28x28, if you are in a tile, its max min can be calc via 14 offsets, from central point
		rotation *= Quaternion.Euler(0,rotationSpeed*timeElapsed,0);
		model_Peep.transform.rotation= rotation;
	}

}
