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
	public Hand()
	{
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
			if(!heldCards[i].isDragged)
			{
				//Position it to 0 + 100xIts I position

				//Local Position
				float xPos = -360f;
				xPos += 100*i;

				Vector2 curPos = Calculate_CardPosition( heldCards[i].go_Model.transform.localPosition,new Vector3(xPos,0),  timeElapsed);
				heldCards[i].go_Model.transform.localPosition= curPos;
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

			UnityEngine.Debug.Log("D="+ (distance));
			UnityEngine.Debug.Log("CD="+ (calcDistance));
			if(calcDistance > distance)
			{
				xCur=target.x;
			}
			UnityEngine.Debug.Log("Orig="+ (origin.x));		
			UnityEngine.Debug.Log("xCur="+ (xCur));			
			UnityEngine.Debug.Log("Target="+ (target.x));				
		}

		else if(target.x < origin.x)
		{
			float distance = 	target.x-origin.x;
			float calcDistance= speed*timeElapsed*-1;

			xCur= origin.x + calcDistance;

			UnityEngine.Debug.Log("2D="+ (distance));
			UnityEngine.Debug.Log("2CD="+ (calcDistance));
			if(calcDistance < distance)
			{
				xCur=target.x;
			}
			UnityEngine.Debug.Log("2Orig="+ (origin.x));		
			UnityEngine.Debug.Log("2xCur="+ (xCur));			
			UnityEngine.Debug.Log("2Target="+ (target.x));				
		}
/*
		if(target.y > origin.y)
		{
			float distance = target.y-origin.y;
			distance*= speed*timeElapsed;
			yCur= origin.y + distance;
			if(yCur > target.y)
			{
				yCur=target.y;
			}
		}
		else if(target.y < origin.y)
		{
			float distance = origin.y - target.y;
			distance*= speed*timeElapsed;
			yCur= origin.y + distance;
			if(yCur < target.y)
			{
				yCur=target.y;
			}
		}*/
		return new Vector2(xCur,yCur);
	}



	void DrawCard()
	{
	//	UnityEngine.Debug.Log("Card Drawn");
		heldCards.Add(iDeck.DrawTopCard());
	}

}
