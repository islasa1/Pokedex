using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System;
using System.Linq;
using System.Collections.Generic;

public class PokeDataAdv : MonoBehaviour {

	private Dropdown typeSelect;
	private Dropdown moveList;
	private string[] pokeMoves;
	private GameObject pokeData;
	private Text size, weight;

	private bool movesPollFlag = true, dataPollFlag = true;

	public Sprite dropSprite;

	
	private string[] types = {"BUG", "DARK", "DRAGON", "ELECTRIC",
		"FIGHTING", "FIRE", "FLYING", "GHOST", "GRASS", "GROUND",
		"ICE", "NORMAL", "POISON", "PSYCHIC", "ROCK", "STEEL", "WATER", "FAIRY"};




	// Use this for initialization
	void Start () {
	
		GameObject dropper = GameObject.FindWithTag ("TypeSelect");
		if(dropper == null) Debug.Log("Cannot find type select dropdown list");
		else typeSelect = dropper.GetComponent<Dropdown>();

		dropper = GameObject.FindWithTag ("MoveList");
		if(dropper == null) Debug.Log("Cannot find Move List dropdown list");
		else moveList = dropper.GetComponent<Dropdown>();

		GameObject temp = GameObject.FindWithTag ("Size");
		if(temp == null) Debug.Log("Cannot find Size text");
		else size = temp.GetComponent<Text>();

		temp = GameObject.FindWithTag ("Weight");
		if(temp == null) Debug.Log("Cannot find Weight text");
		else weight = temp.GetComponent<Text>();

		pokeData = GameObject.FindWithTag ("PokeData");
		if(pokeData == null) Debug.Log("Cannot find PokeData Gameobject");
		else
		{
			movesPollFlag = false;
			dataPollFlag = false;
		}

		foreach(string str in types)
		{
			typeSelect.options.Add(new Dropdown.OptionData(str, null));
		}
	}

	public void CalculateEffectiveness(Int32 value)
	{
		pokeData.GetComponent<pokeData> ().queryEffectiveness (types [value]);
	}

	public void selectMove()
	{
		// Find move number to look up
		if(pokeMoves != null && moveList.value >= 0)
		{
			string[] hold = pokeMoves[moveList.value].Split(new string[] {"\t"}, StringSplitOptions.RemoveEmptyEntries);
			pokeData.GetComponent<pokeData>().setMoveToLookUp(hold[0]);
			Application.LoadLevelAdditive("PokeMove");
		}
	}

	
	// Update is called once per frame
	void Update () {
		// Wait on pokedata to grab move list, and set flag trigger to stop poll
		// when done, to not constantly check
		if(!movesPollFlag)
		{
			if((pokeMoves = pokeData.GetComponent<pokeData>().getMoveList()) != null)
			{	
				// This will create the dropdown list
				foreach(string str in pokeMoves)
				{
					string[] hold = str.Split(new string[] {"\t"}, StringSplitOptions.RemoveEmptyEntries);
					if(hold.Length == 2)
						moveList.options.Add(new Dropdown.OptionData(("No." + hold[0] + " " + hold[1]), null));
				}


				
				movesPollFlag = true;
			}
		}

		if(!dataPollFlag)
		{
			string[] hold;
			// Ask for data
			if( (hold = pokeData.GetComponent<pokeData>().getSizeAndWeight()) != null)
			{
				if(hold.Length == 2)
				{
					// Size is first 
					size.text += float.Parse(hold[0]).ToString("f2") + " m";
					weight.text += float.Parse(hold[1]).ToString("f2") + " kg";
				}

				dataPollFlag = true;
			}
		}
	}
}
