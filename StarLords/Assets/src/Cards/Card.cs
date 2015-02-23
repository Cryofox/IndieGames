using UnityEngine;
using System.Collections;

public class Card {
	public Room storedRoom;
	public GameObject go_Model;
	public string name;

	public bool isDragged=false;


	public Card()
	{
		CreateCard();
	}

	void CreateCard()
	{
		go_Model= Resources.Load<GameObject>("GameObjects/Cards/Card_Default");
		//Instantiate the Card
		go_Model = GameObject.Instantiate(go_Model, Vector3.zero, Quaternion.identity) as GameObject;


		//Reparent to BackDrop
		go_Model.transform.parent = GameObject.Find("BackDrop").transform;

		//ReScale
		go_Model.transform.localScale= new Vector3(1,1,1);
		//Reposition Loc
		go_Model.transform.localPosition= new Vector3(530,0,0);		
	}


	//Dragging Code

}
