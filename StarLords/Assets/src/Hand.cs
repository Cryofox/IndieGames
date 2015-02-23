using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Hand {
	float timeBetweenDraws = 4; // In Seconds
	int handLimit=4;

	float speed=1000;
	float timePassed=0;

	List<Card> heldCards;

	InfinityDeck iDeck;
	Player player;
	public Hand(Player player)
	{
		this.player=player;
		heldCards = new List<Card>();
		iDeck = new InfinityDeck();
	}


	public void Update(float timeElapsed)
	{
		timePassed+=timeElapsed;


		if(timePassed >= timeBetweenDraws)
		{
			if(heldCards.Count < handLimit)
				DrawCard();

			timePassed=0;
		}

		//If a Card is not Being Dragged, position it to the correct position
		//This Logic only needed if the Player == The Human
		for(int i=0;i<heldCards.Count;i++)
		{
			//When a Card Gets Played it's removed from the Hand, therefore all cards need to be Re-indexed
			//Now we need to Tell this Cards Script, the ID so when its used we can reference it here

			//Tell BTN_CARD what ID it has from the HAND
			heldCards[i].go_Model.GetComponent<Btn_Card>().SetCardIndex(i);


			if(heldCards[i].isPlayed)
			{
				if(player.PlayCard(heldCards[i]))
				{	
					heldCards[i].Destroy();
					heldCards.RemoveAt(i);
				}
				else
				{
					heldCards[i].isPlayed=false;
					heldCards[i].isDragged=false;
				}
				
				i--;
			}


			else if(!heldCards[i].isDragged)
			{
				//Position it to 0 + 100xIts I position

				//Local Position
				float xPos = -360f;
				xPos += 100*i;

				Vector2 curPos = Calculate_CardPosition( heldCards[i].go_Model.transform.localPosition,new Vector3(xPos,0),  timeElapsed);
				heldCards[i].go_Model.transform.localPosition= curPos;

				if(heldCards[i].rotationVal!=0)
					heldCards[i].RotateRight();
			}



		}
	}

	//Uses Global: Speed
	Vector2 Calculate_CardPosition(Vector2 origin, Vector2 target, float timeElapsed)
	{
		//Calc the direction the card must go in X-Plane
		float xCur = origin.x;// = target.x - origin.x;
		float yCur = origin.y;// = target.x - origin.x;

		if(target.x > origin.x)
		{
			float distance = target.x-origin.x;
			float calcDistance= speed*timeElapsed;

			xCur= origin.x + calcDistance;

		//	UnityEngine.Debug.Log("D="+ (distance));
		//	UnityEngine.Debug.Log("CD="+ (calcDistance));
			if(calcDistance > distance)
			{
				xCur=target.x;
			}
		//	UnityEngine.Debug.Log("Orig="+ (origin.x));		
		//	UnityEngine.Debug.Log("xCur="+ (xCur));			
		//	UnityEngine.Debug.Log("Target="+ (target.x));				
		}

		else if(target.x < origin.x)
		{
			float distance = 	target.x-origin.x;
			float calcDistance= speed*timeElapsed*-1;

			xCur= origin.x + calcDistance;

		//	UnityEngine.Debug.Log("2D="+ (distance));
		//	UnityEngine.Debug.Log("2CD="+ (calcDistance));
			if(calcDistance < distance)
			{
				xCur=target.x;
			}
		//	UnityEngine.Debug.Log("2Orig="+ (origin.x));		
		//	UnityEngine.Debug.Log("2xCur="+ (xCur));			
		//	UnityEngine.Debug.Log("2Target="+ (target.x));				
		}
		if(target.y > origin.y)
		{
			float distance = target.y-origin.y;
			float calcDistance= speed*timeElapsed;

			yCur= origin.y + calcDistance;

		//	UnityEngine.Debug.Log("yD="+ (distance));
		//	UnityEngine.Debug.Log("yCD="+ (calcDistance));
			if(calcDistance > distance)
			{
				yCur=target.y;
			}
		//	UnityEngine.Debug.Log("yOrig="+ (origin.y));		
		//	UnityEngine.Debug.Log("yCur="+ (yCur));			
		//	UnityEngine.Debug.Log("yTarget="+ (target.y));				
		}

		else if(target.y < origin.y)
		{
			float distance = target.y-origin.y;
			float calcDistance= speed*timeElapsed*-1;

			yCur= origin.y + calcDistance;

		//	UnityEngine.Debug.Log("2yD="+ (distance));
		//	UnityEngine.Debug.Log("2yCD="+ (calcDistance));
			if(calcDistance < distance)
			{
				yCur=target.y;
			}
		//	UnityEngine.Debug.Log("2yOrig="+ (origin.y));		
		//	UnityEngine.Debug.Log("2yCur="+ (yCur));			
		//	UnityEngine.Debug.Log("2yTarget="+ (target.y));				
		}


		return new Vector2(xCur,yCur);
	}

	void DrawCard()
	{
		Card card = iDeck.DrawTopCard();
	//	UnityEngine.Debug.Log("Card Drawn");
		heldCards.Add(card);
	}

	public Card Get_DraggedCard()
	{
		for(int i=0;i<heldCards.Count;i++)
		{
			//When a Card Gets Played it's removed from the Hand, therefore all cards need to be Re-indexed
			//Now we need to Tell this Cards Script, the ID so when its used we can reference it here
			heldCards[i].go_Model.GetComponent<Btn_Card>().SetCardIndex(i);
			heldCards[i].go_Model.GetComponent<Btn_Card>().SetCard(heldCards[i]);

			if(heldCards[i].isDragged)
				return heldCards[i];	
		}
		return null;
	}

}
