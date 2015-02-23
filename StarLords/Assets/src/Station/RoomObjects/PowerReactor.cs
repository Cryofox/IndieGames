using UnityEngine;
using System.Collections;

public class PowerReactor : Room_Object  
{

	public PowerReactor(){}

		//Initialization Logic
	//Quaternion Needed for Walls/Doors
	public override void Setup(float globX, float globY, Quaternion rotation, Rectangle rect_Dimension)
	{
		current_Health	=1;
		max_Health		=1;	

		this.rotation=rotation;
		//Grab the Room
		model_Object  = Resources.Load<GameObject>("GameObjects/Room_Objects/PowerReactor_Reactor");
		//Create and Store the Room from the "World"
		model_Object = GameObject.Instantiate(model_Object,new Vector2(globX,globY),rotation) as GameObject;

		//Create a new Instance of Material
		//mat_Object= Resources.Load<Material>("Materials/ObjectMat");

		//mat_Object.CopyPropertiesFromMaterial(mat_Object);
		mat_Object = new Material (Shader.Find("Custom/ConstructionShader"));
		mat_Object.SetTexture("_Clip_Texture",Resources.Load<Texture>("Textures/AlphaCutout/AlphaCutoutTest_2"));
		mat_Object.SetColor("_ConstructionColor", new Color(0f,35f/255f,53f/255f,1f));
		mat_Object.SetTexture("_ObjectTexture",Resources.Load<Texture>("Textures/Random"));

		//Instantiate
		//model_Object.renderer.material = new Material (Shader.Find("Custom/ConstructionShader"));
		model_Object.renderer.material = mat_Object;
		boxCollider=rect_Dimension;
	}



}
