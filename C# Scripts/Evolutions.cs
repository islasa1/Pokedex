using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System;
using System.Linq;
using System.Collections.Generic;

public class Evolutions : MonoBehaviour {
	
	private GameObject stage_1, stage_2_1, stage_2_2, stage_2_3, stage_3;
	private int evoNo = -1;
	private string[] pokeEvos;
	private bool evoPollFlag = true;
	private GameObject PokeData;
	private int stage2_used = 0, pokeNo = -1;



	void assignLocation(string[] evoData)
	{
		// Check the evo data
		if(evoData.Length != 2)
		{
			Debug.Log("Error: Bad Evo data");
			return;
		}

		Component[] stageImages = null;
		string path = "FRLG_Sprites/FRLG_" + evoData[1].PadLeft(3, '0') + "_front";

		// Now do a switch case based on stage
		switch(evoData[0])
		{
			case "1":
			{
				// Use stage_1 component
				 stageImages = stage_1.GetComponentsInChildren<Image>();
				break;
			}
			case "2":
			{
				if(stage2_used == 0)
				{
					// Use stage_2_1 component
					stageImages = stage_2_1.GetComponentsInChildren<Image>();
				}
				else if(stage2_used == 1)
				{
					// Use stage_2_2 component
					stageImages = stage_2_2.GetComponentsInChildren<Image>();
				}
				else 
				{
					// Use stage_2_3 component
					stageImages = stage_2_3.GetComponentsInChildren<Image>();
				}
				
				// Since we used satge 2, move to next one
				stage2_used++;
				break;
			}
			case "3":
			{	
				// Use stage_3 component
				stageImages = stage_3.GetComponentsInChildren<Image>();
				break;
			}

		}

		// Assigned location, now put stuff there
		foreach(Image img in stageImages)
		{
			if(img.tag == "EvoSprite") 
				img.sprite = Resources.Load<Sprite>(path) as Sprite;
			if(img.tag == "SpriteBkgrd")
				img.sprite = Resources.Load<Sprite>("Sprite_BKGRD") as Sprite;
		}
	}

	// Use this to poll for data from url
	IEnumerator WaitForEvos(WWW url)
	{
		yield return url;
		
		// Error check
		if(url.error == null)
		{
			Debug.Log("Request OK!: " + url.text);
			pokeEvos = url.text.Split( new string[] {"<br>"}, StringSplitOptions.RemoveEmptyEntries);

			// Assign evolution sprites based on string
			if(pokeEvos.Length == 0)
			{
				// Default for no evolution set
				string[] singlePoke = {"1", pokeNo.ToString()};

				assignLocation(singlePoke);
			}
			else
			{
				// Handle the evolution set 
				for(int i = 0; i < pokeEvos.Length; i++)
				{
					// Go through each tuple
					string[] hold = pokeEvos[i].Split(new string[] {"\t"}, StringSplitOptions.RemoveEmptyEntries);
					assignLocation(hold);
				}
			}
			
		}
		else Debug.Log ("Request Fail: " + url.error);
	}
	
	
	// Use this for initialization
	void Start () {

		GameObject sceneSwitcher = GameObject.FindWithTag ("Scene Switcher");
		if(sceneSwitcher == null) Debug.Log("Cannot find scene switcher component");
		else pokeNo = sceneSwitcher.GetComponent<Selector>().PokeNoGet();

		stage_1 = GameObject.FindWithTag ("Stage 1");
		if(stage_1 == null) Debug.Log("Cannot find Stage 1 Objects");
		
		stage_2_1 = GameObject.FindWithTag ("Stage 2.1");
		if(stage_2_1 == null) Debug.Log("Cannot find Stage 2.1 Objects");

		stage_2_2 = GameObject.FindWithTag ("Stage 2.2");
		if(stage_2_2 == null) Debug.Log("Cannot find Stage 2.2 Objects");

		stage_2_3 = GameObject.FindWithTag ("Stage 2.3");
		if(stage_2_3 == null) Debug.Log("Cannot find Stage 2.3 Objects");

		stage_3 = GameObject.FindWithTag ("Stage 3");
		if(stage_3 == null) Debug.Log("Cannot find Stage 1 Objects");

		GameObject temp = GameObject.FindWithTag ("PokeData");
		if(temp == null) Debug.Log ("Cannot find main Poke Data canvas");
		else 
		{
			evoPollFlag = false;
			PokeData = temp;
		}

		
	}

	void Update()
	{
		// Wait on pokedata to grab evo set, and set flag trigger to stop poll
		// when done, to not constantly check
		if(!evoPollFlag)
		{
			if((evoNo = PokeData.GetComponent<pokeData>().getEvoSet()) != -1)
			{	
				// This will set the max pokemon and make the url request
				
				string pokeDataURL = "http://pokedex.x10host.com/pokedex/final/evoStage.php?evoNo=" + evoNo.ToString();
				WWW pokeData = new WWW (pokeDataURL);
				
				StartCoroutine (WaitForEvos (pokeData));

				evoPollFlag = true;
			}
		}
	}


	public void evaluateTag(string selectedTag)
	{
		// Might do something where you change to see pokemon 
		// selected from evos

		// Deferred
	}
}
