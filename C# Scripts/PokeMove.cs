using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System;
using System.Linq;
using System.Collections.Generic;


public class PokeMove : MonoBehaviour {

	private string[] moveData;
	private string moveNo;
	private GameObject pokeData;

	private Text PP, Acc, Description, Name;
	private Image MoveType;


	IEnumerator WaitForMove (WWW url)
	{
		yield return url;
		
		// Error check
		if(url.error == null)
		{
			// Separate the moves into tuples
			moveData = url.text.Split( new string[] {"<br>"}, StringSplitOptions.None);

			Debug.Log("Request OK!: " + url.text);

			if(moveData.Length == 5)
			{
				Name.text += moveData[0];
				Description.text += "\n" + moveData[1];
				// This is actually power, not pp, too late to change now :)
				PP.text += moveData[2];
				Acc.text += moveData[3];

				MoveType.sprite = Resources.Load<Sprite>("Types Textures/Type_" + moveData[4]) as Sprite;
			}
		}
		else Debug.Log ("Request Fail: " + url.error);
	}


	// Use this for initialization
	void Start () {

		GameObject temp = GameObject.FindWithTag ("Move Description");
		if(temp == null) Debug.Log("Cannot find object");
		else Description = temp.GetComponent<Text>();

		temp = GameObject.FindWithTag ("Move Name");
		if(temp == null) Debug.Log("Cannot find object");
		else Name = temp.GetComponent<Text>();

		temp = GameObject.FindWithTag ("PP");
		if(temp == null) Debug.Log("Cannot find object");
		else PP = temp.GetComponent<Text>();


		temp = GameObject.FindWithTag ("Acc");
		if(temp == null) Debug.Log("Cannot find object");
		else Acc = temp.GetComponent<Text>();

		temp = GameObject.FindWithTag ("Move Type");
		if(temp == null) Debug.Log("Cannot find object");
		else MoveType = temp.GetComponent<Image>();

		pokeData = GameObject.FindWithTag ("PokeData");
		if(pokeData == null) Debug.Log("Cannot find PokeData Gameobject");
		else 
		{
			moveNo =  pokeData.GetComponent<pokeData>().getMoveToLookUp();

			// poll data for that move
			string pokeMoveURL = "http://pokedex.x10host.com/pokedex/final/moveData.php?MoveNo=" + moveNo;
			WWW pokeMove = new WWW (pokeMoveURL);
			
			StartCoroutine (WaitForMove (pokeMove));
		}
	
	}

	public void killScene()
	{
		Application.UnloadLevel ("PokeMove");
	}

	// Update is called once per frame
	void Update () {
	
	}
}
