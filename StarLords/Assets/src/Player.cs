using UnityEngine;
using System.Collections;

public class Player {

	public Station station;
	
	public Hand cardHand;
	public bool isHuman=false;
	//This is just a class used to differentiate ownership
	public Player(Station station, bool isHuman)
	{
		this.station=station;
		cardHand= new Hand();
		this.isHuman= isHuman;
	}

	public void Update(float timeElapsed)
	{
		station.Update(timeElapsed);
		cardHand.Update(timeElapsed);
	}




	//MouseKeyboard Interaction Code - Only Usable by Human Players
	public bool DoesCardExist(){return true;}




}
