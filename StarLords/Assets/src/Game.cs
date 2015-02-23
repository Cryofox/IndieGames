using UnityEngine;
using System.Collections;

//This functions as the Before BoardGame in the event other things should occur
//such as a campaign, the boardgame class will be selfcontained to be modular as possible
public class Game : MonoBehaviour {


	public Game_Session currentGame;


	public Game_Session game_Session
	{
		get{return currentGame;}
	}

	// Use this for initialization
	void Awake () {
		currentGame = new Game_Session();
	}
	

	// Update is called once per frame
	// For now simply pretend the currentGame is the only Game
	void Update () 
	{
		float timeElapsed= Time.deltaTime;
		currentGame.Update(timeElapsed);
	}
}
