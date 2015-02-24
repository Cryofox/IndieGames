using UnityEngine;
using System.Collections;

public class Room_Object {

	protected float current_Health;
	protected float max_Health;	


	protected Quaternion rotation;

	//The Progress of the object being build
	float constructionProgress=0;
	float currentProgress=0;




	//This alerts a Peep if the object is busy atm
	bool isInUse = false;





	//Animation Related Interactions
	Vector2 	_interaction_Position;
	Quaternion	_interaction_Orientation;





	public Vector2 interaction_Position
	{
		get{
				//For now just go where the Object is
				return model_Object.transform.localPosition;
			}
	}

	public Quaternion interaction_Orientation
	{
		get{
			return Quaternion.identity;
			}
	}






	protected Rectangle boxCollider= new Rectangle(0,0);

	public GameObject model_Object;
	protected Material mat_Object;

	//This should only be used on Rooms which have been Setup
	public int globalPos_X
	{
		get{
			if(model_Object!=null)
				return (int)(model_Object.transform.position.x);

			return -1;
			}
	}
	public int globalPos_Y
	{
		get{
			if(model_Object!=null)
				return (int)(model_Object.transform.position.y);

			return -1;
			}
	}








	public Room_Object()
	{}


	//Initialization Logic, and place piece in the game
	public virtual void Setup(float globX, float globY, Quaternion rotation, Rectangle rect_Dimension)
	{
		current_Health	=1;
		max_Health		=1;	
		model_Object= null;
		boxCollider=rect_Dimension;
	}

	public void Increment_Construction(float val)
	{
		constructionProgress+=val;
	}

	//This is where we lerp between progresses for animation among other things animation
	//and logic related
	public	void Update(float timeElapsed)
	{
		
	}

}
