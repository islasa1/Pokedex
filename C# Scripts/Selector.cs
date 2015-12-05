using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System;
using System.Linq;
using System.Collections.Generic;


public class Selector : MonoBehaviour {
	private Text feedback;
	private string[] pokemonList;
	private int totalPokemon = 5;
	private Image pokedexTop;
	private Image pokedexBottom;
	private Image pokeSprite;
	private int lastPoke = -1;
	private string pokeNo;
	private bool useAdvView;

	public Canvas PokeList;

	// Use this to poll for data from url
	IEnumerator WaitForList(WWW url)
	{
		yield return url;

		// Error check
		if(url.error == null)
		{
			Debug.Log("Request OK!: " + url.text);
			pokemonList = url.text.Split( new string[] {"<br>", "\t"}, StringSplitOptions.RemoveEmptyEntries);
			// Find the pokelist and give it arguments
			totalPokemon = pokemonList.Length/2;
			PokeList.GetComponent<Move>().setData(totalPokemon, pokemonList);

		}
		else Debug.Log ("Request Fail: " + url.error);

		yield return new WaitForSeconds(.5f);

		if(url.isDone)
		{
			// Make the images move
			for(int i = 180; i >= 0; i--)
			{
				yield return new WaitForSeconds( (float) i/ 7200);
				pokedexTop.transform.Translate(0f, 5f, 0f);
				pokedexBottom.transform.Translate(0f, -5f, 0f);
			}
		}
	}


	// Use this for initialization
	void Start () 
	{
		// Find the feedback text
		GameObject temp = GameObject.FindWithTag ("temp");
		if (temp != null) feedback = temp.GetComponent<Text> ();
		else Debug.Log ("Cannot find Feedback instance");	
		feedback.text = "";
		// Now done downloading
			GameObject image = GameObject.FindWithTag ("Top");
		if(image != null) pokedexTop = image.GetComponent<Image>();
		else Debug.Log("Cannot find Pokedex Top");
		
		image = GameObject.FindWithTag ("Bottom");
		if(image != null) pokedexBottom = image.GetComponent<Image>();
		else Debug.Log("Cannot find Pokedex Bottom");

		image = GameObject.FindWithTag ("PokeSprite");
		if(image != null) pokeSprite = image.GetComponent<Image>();
		else Debug.Log("Cannot find Pokedex Sprite");


		// This will set the max pokemon and make the url request
		string pokeListURL = "http://pokedex.x10host.com/pokedex/final/pokeList.php";
		WWW pokeList = new WWW (pokeListURL);

		StartCoroutine (WaitForList (pokeList));


	}
	
	// Update is called once per frame
	void Update () {
	
	}


	public void PokeSpriteSelect(Text inButton)
	{


		// Find which button pressed me
		feedback.text = inButton.text;
		string[] hold = feedback.text.Split (new string[] {" ", "No.", "?"}, StringSplitOptions.RemoveEmptyEntries);

		pokeNo = "0";
		if(hold.Length > 0) pokeNo = hold [0];


		if(Int32.Parse(pokeNo) == 0) Debug.Log("No sprite to load");
		else
		{
			// Switch scene here, handing off pokemon number
			if(lastPoke == Int32.Parse(pokeNo))
			{
				Application.LoadLevelAdditive("pokeData");
				if(useAdvView) Application.LoadLevelAdditive("pokeDataAdv");
			}

			string[] pokeName = hold[1].Split(new string[] {"."}, StringSplitOptions.RemoveEmptyEntries);

			string lookUpName = (pokeName.Length > 1 ? (pokeName[0] + pokeName[1]) :
			                     (pokeName[0]));

			pokeSprite.sprite = Resources.Load<Sprite>("Pokemon/" + pokeNo + lookUpName) as Sprite;
			lastPoke = Int32.Parse(pokeNo);
		}
		Resources.UnloadUnusedAssets();

	}

	public void setAdvView(bool toggle)
	{
		useAdvView = toggle;


		if(GameObject.FindWithTag("PokeData") != null)
		{
			if(toggle) Application.LoadLevelAdditive("pokeDataAdv");
			else Application.UnloadLevel("pokeDataAdv");
		}
	}

	public int PokeNoGet()
	{
		return lastPoke;
	}

	public string PokeNoStringGet()
	{
		return pokeNo;
	}
}
