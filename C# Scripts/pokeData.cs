using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System;
using System.Linq;
using System.Collections.Generic;


public class pokeData : MonoBehaviour {

	private GameObject sceneSwitcher;
	private int pokeNo = -1;
	private string[] pokemonData = null;
	private string[] moveList;
	private Text pokeDescription;
	private Image type1;
	private Image type2;
	private int evoSet = -1;
	private string moveToLookUp = "";





	// Use this to poll for data from url
	IEnumerator WaitForData(WWW url)
	{
		yield return url;
		// Error check
		if(url.error == null)
		{
			Debug.Log("Request OK!: " + url.text);
			pokemonData = url.text.Split( new string[] {"<br>"}, StringSplitOptions.None);
			// Find the pokelist and give it arguments
			pokeDescription.text = pokemonData[1];

			string[] pokeTypes = pokemonData[0].Split(new string[] {"\t"}, StringSplitOptions.RemoveEmptyEntries);
			type1.sprite = Resources.Load<Sprite>("Types Textures/Type_" + pokeTypes[0]) as Sprite;
			if(pokeTypes.Length == 2) type2.sprite = Resources.Load<Sprite>("Types Textures/Type_" + pokeTypes[1]) as Sprite;

			evoSet = Int32.Parse(pokemonData[2]);

		}
		else Debug.Log ("Request Fail: " + url.error);
	}

	IEnumerator WaitForEffect(WWW url)
	{
		yield return url;
		
		// Error check
		if(url.error == null)
		{
			Debug.Log("Request OK!: " + url.text);
			GameObject temp = GameObject.FindWithTag("Effect Result");
			if(temp == null) Debug.Log("Cannot find Effect Result text");
			else temp.GetComponent<Text>().text = url.text;
		}
		else Debug.Log ("Request Fail: " + url.error);
	}

	IEnumerator WaitForMoveList(WWW url)
	{
		yield return url;
		
		// Error check
		if(url.error == null)
		{
			// Separate the moves into tuples
			moveList = url.text.Split( new string[] {"<br>"}, StringSplitOptions.RemoveEmptyEntries);
		}
		else Debug.Log ("Request Fail: " + url.error);
	}


	// Use this for initialization
	void Start () {
	
		sceneSwitcher = GameObject.FindWithTag ("Scene Switcher");
		if(sceneSwitcher == null) Debug.Log("Cannot find scene switcher component");
		else pokeNo = sceneSwitcher.GetComponent<Selector>().PokeNoGet();

		GameObject temp = GameObject.FindWithTag ("Description");
		if(temp == null) Debug.Log("Cannot find description");
		else pokeDescription = temp.GetComponent<Text>();

		temp = GameObject.FindWithTag ("Type1");
		if(temp == null) Debug.Log("Cannot find Type1 Image");
		else type1 = temp.GetComponent<Image>();

		temp = GameObject.FindWithTag ("Type2");
		if(temp == null) Debug.Log("Cannot find Type2 Image");
		else type2 = temp.GetComponent<Image>();

		// This will pull all necessary data from advanced view, even if not used simply
		// to reduce amount of application end queries
		string pokeDataURL = "http://pokedex.x10host.com/pokedex/final/advancedView.php?PokeNo=" + pokeNo.ToString();
		WWW pokeData = new WWW (pokeDataURL);

		string pokeMovesURL = "http://pokedex.x10host.com/pokedex/final/movesView.php?PokeNo=" + pokeNo.ToString();
		WWW pokeMoves = new WWW (pokeMovesURL);
		
		StartCoroutine (WaitForData (pokeData));
		StartCoroutine (WaitForMoveList (pokeMoves));

	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public int getEvoSet()
	{
		return evoSet;
	}

	public void killScene()
	{
		// This will be called on back button
		Application.UnloadLevel ("pokeData");
		Application.UnloadLevel ("pokeDataAdv");
	}


	public string[] getMoveList()
	{
		return moveList;
	}

	public string getMoveToLookUp()
	{
		return moveToLookUp;
	}

	public void setMoveToLookUp(string moveNo)
	{
		moveToLookUp = moveNo;
	}

	public string[] getSizeAndWeight()
	{
		if(pokemonData == null) return null;
		else if(pokemonData.Length == 5) return new string[] {pokemonData[3], pokemonData[4]};
		else return null;
	}



	public void queryEffectiveness(string attackType)
	{
		// This function will be called via the advanced view scene, and hand the object 
		// the attack type, and pokeData will provide pokemon specific types
		string[] pokeTypes = pokemonData[0].Split(new string[] {"\t"}, StringSplitOptions.RemoveEmptyEntries);

		string pokeEffectURL = "http://pokedex.x10host.com/pokedex/final/effectiveCalc.php?atkType=" + attackType + "&type1='" + pokeTypes[0] + "'";

		// Set NULL type
		if(pokeTypes.Length == 2) pokeEffectURL += ("&type2='" + pokeTypes[1]) + "'";
		else pokeEffectURL += "&type2=NULL";

		WWW pokeEffect = new WWW (pokeEffectURL);
		
		StartCoroutine (WaitForEffect (pokeEffect));
	}
}
