using UnityEngine;
using System.Collections;

public class Game_Session {

	Station playerStation;
	Player human;
	public Game_Session()
	{
		//Player Station
		playerStation= new Station();

		human = new Player(playerStation,true);


	}
	
	//This is a wrapper for the Station
	public void AddRoom(Room room, int globX, int globY)
	{
	//	UnityEngine.Debug.Log("AddRoom Called");
		human.station.AddRoom(room,globX,globY);
	}


	// Update is called once per frame
	public void Update (float timeElapsed) 
	{
		//playerStation.Update(timeElapsed);
		human.Update(timeElapsed);

	}




}
