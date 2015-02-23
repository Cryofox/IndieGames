using UnityEngine;
using System.Collections;

//This functions as the Before BoardGame in the event other things should occur
//such as a campaign, the boardgame class will be selfcontained to be modular as possible
public class Game : MonoBehaviour {
public static readonly int LOBBY=0;
public static readonly int GAMESESSION=1;


	public Game_Session currentGame;

	//The Classes for Player Control
	private Keyboard keyboard;
	private Mouse mouse;


	public Game_Session game_Session
	{
		get{return currentGame;}
	}

	// Use this for initialization
	void Awake () 
	{
		//All links on Game - GO so this is valid.
		keyboard = GetComponent<Keyboard>();
		mouse = GetComponent<Mouse>();		

		currentGame = new Game_Session();	

		//Now that a Session Exists we can Assign the Human to the K/M
		mouse.human= currentGame.human;
	}

	// Update is called once per frame
	// For now simply pretend the currentGame is the only Game
	void Update () 
	{
		float timeElapsed= Time.deltaTime;
		currentGame.Update(timeElapsed);
	}


	//This returns the hu
	Player GetHuman()
	{
		return	currentGame.human;
	}







}
