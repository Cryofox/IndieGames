using UnityEngine;
using System.Collections;

public class Mouse : MonoBehaviour {

	//GameCamera
	GameObject gameCamera;

	Game_Session game_Session;



	float CamSpeed=10;
	public Player human;
	void Start()
	{
		gameCamera  = GameObject.Find("GameCamera");
		game_Session= GameObject.Find("Game_").GetComponent<Game>().game_Session;
	}

	
	// Update is called once per frame
	void Update () {
		//Detect if mouse is in screen, break if not.
		Rect screenRect = new Rect(0,0, Screen.width, Screen.height);
		if (!screenRect.Contains(Input.mousePosition))
		    return;


		//This also exists in Game
		float timeElapsed= Time.deltaTime;


		Ray ray = gameCamera.GetComponent<Camera>().ScreenPointToRay (Input.mousePosition);
		Debug.DrawRay(ray.origin, ray.direction * 290, Color.green, 0.01f);

		//Lets Get the Room Placement Code
		// 0 = Left Mouse Down
		if(Input.GetMouseButtonDown(0))
		{
			Left_MouseDown();
		}
		float sWheel= Input.GetAxis("Mouse ScrollWheel");
		if (sWheel !=0)
			ScrollWheel( sWheel,timeElapsed);
	}


	//Rotates the Card Currently Being Held
	void ScrollWheel(float val, float timeElapsed)
	{

		//KeyBoard Call, shhh ik its cheating :P

		//If CTRL is pressed we zoom
		if(Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift))
		{
			//Will need to Cap this Eventually
			gameCamera.transform.position+= new Vector3(0,0, val*2000*timeElapsed);
		}
		else
		{
			//Get the Current Card being Dragged
			Card cardPlaced = human.cardHand.Get_DraggedCard();
			if(cardPlaced!= null)
			{
				// Rotate In the Direction the Wheel is Rotated
				if(val>0)
					cardPlaced.RotateRight();
				else if(val<0)
					cardPlaced.RotateLeft();			
			}
		}
	}


	//This will be used, if no GUI Element is Pressed?
	void Left_MouseDown()
	{
		//Card Drag
		//Determine if a Card exists at this location

		// Click on World Code
		/*  
		//If we are Holding a Card

			//Vector3 Find 

			//I Spawn a room at 1,0 on L_Click
			//Default Room for now

			Vector3 mPos = MouseWorld_Position();

			//Clamp the World Position to Station Offsets
			//This only works atm because the station does not move
			float posx=0;
			float posy=0;

			Debug.Log("MX,MY :"+ mPos );
			//Remember to divide by 28, as thats the size of a square tile
			if( mPos.x >= 0)
				posx = ((mPos.x - 14) /28) +1;
			else
				posx = ((mPos.x + 14) /28) -1;

			if( mPos.y >= 0)
				posy = ((mPos.y - 14) /28) +1;
			else
				posy = ((mPos.y + 14) /28) -1;

			//if(posx > (int) posx)
			//	posx++;

			game_Session.AddRoom(new Room(), (int)posx,(int)posy);
		*/
	}



	Vector3 MouseWorld_Position()
	{
		Ray ray = gameCamera.GetComponent<Camera>().ScreenPointToRay (Input.mousePosition);
		Debug.DrawRay(ray.origin, ray.direction * 290, Color.green, 0.5f);


		return (ray.origin + ray.direction*290);
	}


}
