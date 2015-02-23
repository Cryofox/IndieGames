using UnityEngine;
using System.Collections;

public class Game_Session {

	Station playerStation;
	public Player human;
	public Game_Session()
	{
		//Player Station
		playerStation= new Station();
		human = new Player(playerStation,true);
	}
	



	//Game Session should handle Game Related Logic



//Who determines what is Happening? The Mouse does using GUI Logic, then sends that data to G_Session







	//This is a wrapper for the Station
	//Why is the Player whom has access to a Station asking the GameSession if he can modify a station
	//he owns?
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
