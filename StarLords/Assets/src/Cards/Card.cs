using UnityEngine;
using System.Collections;

public class Card {
	public Room storedRoom;
	public GameObject go_Model;
	public string name;

	public bool isDragged=false;

	public int 	rotationVal=0;

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

		storedRoom=	new Room();
		go_Model.GetComponent<Btn_Card>().SetCard(this);
	}


	//Rotate the Card, which will rotate the Room
	public void RotateRight()	
	{
		storedRoom.Room_Rotate_Right();
		go_Model.transform.rotation *=   Quaternion.Euler(0,0,-90);

		rotationVal+=1;
		if(rotationVal>3)
			rotationVal=0;
	}
	public void RotateLeft()	
	{
		storedRoom.Room_Rotate_Left();
		go_Model.transform.rotation *=   Quaternion.Euler(0,0,90);

		rotationVal-=1;
		if(rotationVal<0)
			rotationVal=3;
	}

}
