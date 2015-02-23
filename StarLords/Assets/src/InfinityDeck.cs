using UnityEngine;
using System.Collections;
using System.Collections.Generic;
public class InfinityDeck {

	List<string> cards;
	public InfinityDeck()
	{InitializeDeck();}


	void InitializeDeck()
	{
		cards = new List<string>();
		cards.Add("C_Radar");

	}




	public Card DrawTopCard()
	{
//		UnityEngine.Debug.Log("Drawing Top Card");
		string cardName= cards[  Random.Range(0, cards.Count)  ];
		return GetNewCard(cardName);
	}


	//Returns a New Instance of a Passed in
	Card GetNewCard(string cardName)
	{
		if(cardName=="C_Radar")
		{			
		UnityEngine.Debug.Log("C_Radar Drawn");

		//Create a new Card and Return it
			return new C_Radar();
		}
			
		else
		{			
		UnityEngine.Debug.Log("null");
		return null;
		}
	}



}
