using UnityEngine;
using System.Collections;

public class Mouse : MonoBehaviour {

	//GameCamera
	GameObject gameCamera;

	Game_Session game_Session;
	float CamSpeed=10;

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
			//Vector3 Find 

			//I Spawn a room at 1,0 on L_Click
			//Default Room for now

			Vector3 mPos = MouseWorld_Position();


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

		}
	}







	Vector3 MouseWorld_Position()
	{
		Ray ray = gameCamera.GetComponent<Camera>().ScreenPointToRay (Input.mousePosition);
		Debug.DrawRay(ray.origin, ray.direction * 290, Color.green, 0.5f);


		return (ray.origin + ray.direction*290);

	}


}
