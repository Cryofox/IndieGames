using UnityEngine;
using System.Collections;

public class Keyboard : MonoBehaviour {

	//GameCamera
	GameObject gameCamera;
	float CamSpeed=30;

	void Start()
	{
		gameCamera = GameObject.Find("GameCamera");
	}
	// Update is called once per frame
	void Update() 
	{
		//This also exists in Game
		float timeElapsed= Time.deltaTime;

		float xPos=0;
		float yPos=0;
		// Move Camera
		if( Input.GetKey(KeyCode.W))
		{
			yPos+=1;
		}
		if( Input.GetKey(KeyCode.S))
		{
			yPos-=1;
		}
		if( Input.GetKey(KeyCode.A))
		{
			xPos-=1;
		}
		if( Input.GetKey(KeyCode.D))
		{
			xPos+=1;
		}

		Vector2 currPos = gameCamera.transform.position;

		Vector2 goToPos = new Vector2( xPos* CamSpeed , yPos* CamSpeed );
		goToPos += currPos;
		//Linear Interpolate between the two Vectors based on time passed 
	 	Vector2 finalPos = Vector2.Lerp( currPos, goToPos, timeElapsed);

	 	gameCamera.transform.position = new Vector3(finalPos.x, finalPos.y,gameCamera.transform.position.z);
	}
}
