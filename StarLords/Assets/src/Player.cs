using UnityEngine;
using System.Collections;
using System.Collections.Generic;
public class Player {

	public Station station;
	
	public Hand cardHand;
	public bool isHuman=false;





	//List of Arrows used to Show the player where he can place Cards
	List<GameObject> arrows = new List<GameObject>();


	Mouse 	 mouse;
	Keyboard keyboard;
	//This is just a class used to differentiate ownership
	public Player(Station station, bool isHuman)
	{
		this.station=station;
		cardHand= new Hand(this);
		this.isHuman= isHuman;
		if(isHuman)
			mouse=GameObject.Find("Game_").GetComponent<Mouse>();

	}

	public void Update(float timeElapsed)
	{
		station.Update(timeElapsed);
		cardHand.Update(timeElapsed);

		//If we are Human, prepare the List of GameObjects
		if(isHuman)
			PrepareGUI_Elements();

	}




	void PrepareGUI_Elements()
	{
		List<Vector2> freeNodes = station.Get_OpenRoomLocations();
		//Check if our GO arrows list is smaller
		while(arrows.Count < freeNodes.Count)
		{
			arrows.Add(InstantiateArrow());
		}

		//Enable all Arrows and Position at FreeNode
		for(int i=0; i< arrows.Count; i++)
		{
			if(i<freeNodes.Count)
			{
				arrows[i].transform.position=  freeNodes[i]*28;
				arrows[i].SetActive(true);
			}
			else
				arrows[i].SetActive(false);

		}
	}

	//Disable the Arrow upon creation
	GameObject InstantiateArrow()
	{
		GameObject arrow;
		arrow= Resources.Load<GameObject>("GameObjects/GUI/Placement_Arrows");
		arrow= GameObject.Instantiate(arrow, Vector3.zero, Quaternion.Euler(90,0,0)) as GameObject;
		arrow.SetActive(false);
		return arrow;
	}
	//GUI Stuff for Human Players

	public bool PlayCard(Card card)
	{
		//I have a Card to Play
//		UnityEngine.Debug.Log("Card="+ card.name);
		Vector2 gameCardPos= (mouse.ScreenWorld_Position(card.go_Model.transform.position));

		return AddRoom(card.storedRoom, (int) gameCardPos.x, (int) gameCardPos.y);
	}


	bool AddRoom(Room room, int relX, int relY)
	{

	//	UnityEngine.Debug.Log("AddRoom Called");
		return station.AddRoom(room,relX,relY);
	}








}
