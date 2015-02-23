using UnityEngine;
using System.Collections;

public class Btn_Card : MonoBehaviour {

	int index=-1;
	Card myCard;
	public void SetCardIndex(int id)
	{
		index=id;
	}
	public void SetCard(Card card)
	{
		//Debug.LogWarning("Setting Card");
		myCard=card;
	}

	//Find the Game Session Code, and invoke the Human Player's
	//Card to True
	void OnPress(bool val)
	{
		if(val==true)
			myCard.isDragged=true;
		else
			myCard.isDragged=false;		
	}
	

}
