using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System;
using System.Linq;
using System.Collections.Generic;

public class Move : MonoBehaviour {

	private Button bar_0, bar_up_1, bar_up_2, bar_up_3;
	private Button bar_down_1, bar_down_2, bar_down_3;
	private ScrollRect scroller;
	private bool snap0 = true, snap_up1 = true, snap_up2 = true, snap_up3 = true, snap_down1 = true, snap_down2 = true, snap_down3 = true;
	private bool lastMoveUp = false, triggerUp = false, triggerDown = false;

	private float sensitivity;
	private Text buttonText;
	private float deltaP = 0;
	private string[] pokemonList = {""};
	private int trackList = 0;
	private Image pokeball;	

	public float scale;

	// To properly bound number of items, do desired number - 3 (2 to put it into bar 0 position, and 1 to account for 0 index)
	private int numOfItems = 3;


	// Controls how fast you can scroll, lower numbers = faster
	private int scrollRate = 150;


	// Set numof items, must be at least 5
	public void setData(int total, string[] list)
	{
		findBars ();

		numOfItems = total;
		pokemonList = list;

		// Initial population of bars
		bar_up_3.GetComponentInChildren<Text> ().text = "";
		bar_up_2.GetComponentInChildren<Text> ().text = "";
		bar_up_1.GetComponentInChildren<Text> ().text = "";
		// Actual stuff
		bar_0.GetComponentInChildren<Text> ().text = "  No.00" + pokemonList[trackList*2] + " " + pokemonList[trackList*2 + 1];
		bar_down_1.GetComponentInChildren<Text> ().text = "  No.00" + pokemonList[(trackList + 1)*2] + " " + pokemonList[(trackList + 1)*2 + 1];
		bar_down_2.GetComponentInChildren<Text> ().text = "  No.00" + pokemonList[(trackList + 2)*2] + " " + pokemonList[(trackList + 2)*2 + 1];
		bar_down_3.GetComponentInChildren<Text> ().text = "  No.00" + pokemonList[(trackList + 3)*2] + " " + pokemonList[(trackList + 3)*2 + 1];


	}


	//***************************************************************
	//
	// This will reassign the bars based on their current tags
	//
	//***************************************************************
	private void findBars()
	{
		// Find the bars
		GameObject bar = GameObject.FindWithTag ("Bar_0");
		if (bar != null)
			bar_0 = bar.GetComponent<Button> ();
		else
			Debug.Log ("Cannot find Bar_0 instance");
		
		bar = GameObject.FindWithTag ("Bar_1");
		if (bar != null)
			bar_up_1 = bar.GetComponent<Button> ();
		else
			Debug.Log ("Cannot find Bar_1 instance");
		
		bar = GameObject.FindWithTag ("Bar_2");
		if (bar != null)
			bar_up_2 = bar.GetComponent<Button> ();
		else
			Debug.Log ("Cannot find Bar_2 instance");
		
		bar = GameObject.FindWithTag ("Bar_3");
		if (bar != null)
			bar_up_3 = bar.GetComponent<Button> ();
		else
			Debug.Log ("Cannot find Bar_3 instance");
		
		bar = GameObject.FindWithTag ("Bar_-1");
		if (bar != null)
			bar_down_1 = bar.GetComponent<Button> ();
		else
			Debug.Log ("Cannot find Bar_-1 instance");
		
		bar = GameObject.FindWithTag ("Bar_-2");
		if (bar != null)
			bar_down_2 = bar.GetComponent<Button> ();
		else
			Debug.Log ("Cannot find Bar_-2 instance");
		
		bar = GameObject.FindWithTag ("Bar_-3");
		if (bar != null)
			bar_down_3 = bar.GetComponent<Button> ();
		else
			Debug.Log ("Cannot find Bar_-3 instance");
	}

	// Reset snapping
	private void setSnapFalse()
	{
		snap0 = snap_up1 = snap_up2 = snap_up3 = snap_down1 = snap_down2 = snap_down3 = false;
	}

	// Check the snap, are we in the set positions
	private bool checkSnap()
	{
		return (snap0 && snap_up1 && snap_up2 && snap_up3 && snap_down1 && snap_down2 && snap_down3);
	}

	//******************************************************************
	//
	// Specifics of moving a bar based on tag (tags will tell location)
	//
	//******************************************************************

	// Protocol for moving the bars up
	private void moveBar_UP(ref Button buttonToMove)
	{
		// Movements will be done in 5 step routines
		switch (buttonToMove.tag) {
		case "Bar_0":
			// Move according to position 0
			// Move x and y, checkingfor correct position
			if (buttonToMove.transform.localPosition.y == 35f && buttonToMove.transform.localPosition.x == 5f)
			{
				// Reassign tag
				buttonToMove.tag = "Bar_1";
				snap_up1 = true;
			}
			else buttonToMove.transform.localPosition = new Vector3(1f + buttonToMove.transform.localPosition.x,
			                                                        7f  + buttonToMove.transform.localPosition.y, 0f);
			break;
		case "Bar_1":
			// Move according to position 1
			// Move x and y, checkingfor correct position
			if (buttonToMove.transform.localPosition.y == 70f && buttonToMove.transform.localPosition.x == 15f)
			{
				// Reassign tag
				buttonToMove.tag = "Bar_2";
				snap_up2 = true;
			} 
			else buttonToMove.transform.localPosition = new Vector3 (2f + buttonToMove.transform.localPosition.x,
			                                                         7f  + buttonToMove.transform.localPosition.y, 0f);
			break;
		case "Bar_2":
			// Move according to position 2
			// Move x and y, checkingfor correct position
			if (buttonToMove.transform.localPosition.y == 105f && buttonToMove.transform.localPosition.x == 30f)
			{
				// Reassign tag
				buttonToMove.tag = "Bar_3";
				snap_up3 = true;
			} 
			else buttonToMove.transform.localPosition = new Vector3 (3f  + buttonToMove.transform.localPosition.x,
			                                                         7f  + buttonToMove.transform.localPosition.y, 0f);
			break;
		case "Bar_3":
			// Move according to position 3
			// This is tricky since we need to loop around and assign this to Bar -3
			// Move x and y, checkingfor correct position
			if (buttonToMove.transform.localPosition.y == -105f && buttonToMove.transform.localPosition.x == 30f)
			{
				// Reassign tag
				buttonToMove.tag = "Bar_-3";
				snap_down3 = true;
			}
			else if(buttonToMove.transform.localPosition.y >= 105 && buttonToMove.transform.localPosition.x < 38f)
			{
				// This is the initial move away from everything, even though bar 3 will barely be visible
				// Iterate through this twice to emulate same process happening to other things
				buttonToMove.transform.localPosition= new Vector3 (4f  + buttonToMove.transform.localPosition.x,
				                                                   7f  + buttonToMove.transform.localPosition.y, 0f);
			}
			else if(buttonToMove.transform.localPosition.y < 0f)
			{
				// This is the final move back into everything, even though bar 3 will barely be visible
				// Iterate through this twice to emulate same process happening to other things
				buttonToMove.transform.localPosition = new Vector3 (-4f  + buttonToMove.transform.localPosition.x,
				                                                    7f  + buttonToMove.transform.localPosition.y, 0f);
			}
			else if(buttonToMove.transform.localPosition.y == 119f && buttonToMove.transform.localPosition.x == 38f)
			{
				// This is the middle ground where we repopulate the bar
				buttonToMove.transform.localPosition = new Vector3 (38f, -119f, 0f);

				// Repopulate the bar so it shows something new in the screen
				// Test
				buttonText = buttonToMove.GetComponentInChildren<Text>();
				trackList++;

				if(trackList >= (numOfItems - 3)) 
				{
					buttonText.text = " ";
				}
				else 
				{
					buttonText = buttonToMove.GetComponentInChildren<Text>();

					buttonText.text = "  No.";
					if(Int32.Parse(pokemonList[(trackList + 3)*2]) < 10) buttonText.text += "0";

					if(Int32.Parse(pokemonList[(trackList + 3)*2]) < 100) buttonText.text += "0";
					  
					buttonText.text += pokemonList[(trackList + 3)*2] + " " + pokemonList[(trackList + 3)*2 + 1];
				}
			}
			break;
		case "Bar_-1":
			// Move according to position -1
			// Move x and y, checkingfor correct position
			if (buttonToMove.transform.localPosition.y == 0f && buttonToMove.transform.localPosition.x == 0f)
			{
				// Reassign tag
				buttonToMove.tag = "Bar_0";
				snap0 = true;
			} 
			else buttonToMove.transform.localPosition = new Vector3 (-1f  + buttonToMove.transform.localPosition.x,
			                                        				  7f  + buttonToMove.transform.localPosition.y, 0f);
			break;
		case "Bar_-2":
			// Move according to position -2
			// Move x and y, checkingfor correct position
			if (buttonToMove.transform.localPosition.y == -35f && buttonToMove.transform.localPosition.x == 5f)
			{
				// Reassign tag
				buttonToMove.tag = "Bar_-1";
				snap_down1 = true;

			} 
			else buttonToMove.transform.localPosition = new Vector3 (-2f + buttonToMove.transform.localPosition.x,
			                                        				  7f  + buttonToMove.transform.localPosition.y, 0f);
			break;
		case "Bar_-3":
			// Move according to position -3
			// Move x and y, checkingfor correct position
			if (buttonToMove.transform.localPosition.y == -70f && buttonToMove.transform.localPosition.x == 15f) 
			{
				// Reassign tag
				buttonToMove.tag = "Bar_-2";
				snap_down2 = true;
			} 
			else buttonToMove.transform.localPosition = new Vector3 (-3f  + buttonToMove.transform.localPosition.x,
			                                        				  7f  + buttonToMove.transform.localPosition.y, 0f);
			break;
			
		}
	}

	// Protocol for moving bars down
	private void moveBar_DOWN(ref Button buttonToMove)
	{
		// Movements will be done in 5 step routines
		switch (buttonToMove.tag) {
		case "Bar_0":
			// Move according to position 0
			// Move x and y, checkingfor correct position
			if (buttonToMove.transform.localPosition.y == -35f && buttonToMove.transform.localPosition.x == 5f)
			{
				// Reassign tag
				buttonToMove.tag = "Bar_-1";
				snap_down1 = true;
			}
			else buttonToMove.transform.localPosition = new Vector3 (1f  + buttonToMove.transform.localPosition.x,
			                                      				    -7f  + buttonToMove.transform.localPosition.y, 0f);
			break;
		case "Bar_1":
			// Move according to position 1
			// Move x and y, checkingfor correct position
			if (buttonToMove.transform.localPosition.y == 0f && buttonToMove.transform.localPosition.x == 0f)
			{
				// Reassign tag
				buttonToMove.tag = "Bar_0";
				snap0 = true;
			} 
			else buttonToMove.transform.localPosition = new Vector3 (-1f  + buttonToMove.transform.localPosition.x,
			                                      				     -7f  + buttonToMove.transform.localPosition.y, 0f);
			break;
		case "Bar_2":
			// Move according to position 2
			// Move x and y, checkingfor correct position
			if (buttonToMove.transform.localPosition.y == 35f && buttonToMove.transform.localPosition.x == 5f)
			{
				// Reassign tag
				buttonToMove.tag = "Bar_1";
				snap_up1 = true;

			} 
			else buttonToMove.transform.localPosition = new Vector3 (-2f  + buttonToMove.transform.localPosition.x,
			                                       				     -7f  + buttonToMove.transform.localPosition.y, 0f);
			break;
		case "Bar_3":
			// Move according to position -3
			// Move x and y, checkingfor correct position
			if (buttonToMove.transform.localPosition.y == 70f && buttonToMove.transform.localPosition.x == 15f) 
			{
				// Reassign tag
				buttonToMove.tag = "Bar_2";
				snap_up2 = true;
			} 
			else buttonToMove.transform.localPosition = new Vector3 (-3f  + buttonToMove.transform.localPosition.x,
			                                       					 -7f  + buttonToMove.transform.localPosition.y, 0f);
			break;
		case "Bar_-1":
			// Move according to position -1
			// Move x and y, checkingfor correct position
			if (buttonToMove.transform.localPosition.y == -70f && buttonToMove.transform.localPosition.x == 15f)
			{
				// Reassign tag
				buttonToMove.tag = "Bar_-2";
				snap_down2 = true;
			} 
			else buttonToMove.transform.localPosition = new Vector3 (2f  + buttonToMove.transform.localPosition.x,
			                                       					-7f  + buttonToMove.transform.localPosition.y, 0f);
			break;
		case "Bar_-2":
			// Move according to position -2
			// Move x and y, checkingfor correct position
			if (buttonToMove.transform.localPosition.y == -105f && buttonToMove.transform.localPosition.x == 30f)
			{
				// Reassign tag
				buttonToMove.tag = "Bar_-3";
				snap_down3 = true;
			} 
			else buttonToMove.transform.localPosition = new Vector3 (3f  + buttonToMove.transform.localPosition.x,
			                                       					-7f  + buttonToMove.transform.localPosition.y, 0f);
			break;
		case "Bar_-3":
			// Move according to position 3
			// This is tricky since we need to loop around and assign this to Bar -3
			// Move x and y, checkingfor correct position

			if (buttonToMove.transform.localPosition.y == 105f && buttonToMove.transform.localPosition.x == 30f)
			{
				// Reassign tag

				buttonToMove.tag = "Bar_3";
				snap_up3 = true;
			}
			else if(buttonToMove.transform.localPosition.y <= -105 && buttonToMove.transform.localPosition.x < 38f)
			{
				// This is the initial move away from everything, even though bar 3 will barely be visible
				// Iterate through this twice to emulate same process happening to other things
				buttonToMove.transform.localPosition = new Vector3 (4f  + buttonToMove.transform.localPosition.x,
				                                  				   -7f  + buttonToMove.transform.localPosition.y, 0f);
			}
			else if(buttonToMove.transform.localPosition.y > 0f)
			{
				// This is the final move back into everything, even though bar 3 will barely be visible
				// Iterate through this twice to emulate same process happening to other things
				buttonToMove.transform.localPosition = new Vector3 (-4f  + buttonToMove.transform.localPosition.x,
				                                  					-7f  + buttonToMove.transform.localPosition.y, 0f);
			}
			else if(buttonToMove.transform.localPosition.y == -119f && buttonToMove.transform.localPosition.x == 38f)
			{
				// This is the middle ground where we repopulate the bar
				buttonToMove.transform.localPosition = new Vector3 (38f, 119f, 0f);

				// Repopulate the bar so it shows something new in the screen
				// Test
				buttonText = buttonToMove.GetComponentInChildren<Text>();
				trackList--;
				if(trackList <= 2) buttonText.text = " ";
				else 
				{
					buttonText.text = "  No.";
					if(Int32.Parse(pokemonList[(trackList - 3)*2]) < 10) buttonText.text += "0";

					if(Int32.Parse(pokemonList[(trackList - 3)*2]) < 100) buttonText.text += "0";
					buttonText.text += pokemonList[(trackList - 3)*2] + " " + pokemonList[(trackList - 3)*2 + 1];
				}

			}
			break;
			
		}
	}

	public void moveBarsUp()
	{
		if (!triggerDown)
		{

			triggerUp = false;
			// Snap the bars if we are changing direction
			if (!lastMoveUp)
			{
				while (!checkSnap())
					moveBarsDown ();
			}

			// This may be bad
			if(checkSnap()) findBars();
			setSnapFalse ();


			moveBar_UP (ref bar_0);
			moveBar_UP (ref bar_up_1);
			moveBar_UP (ref bar_up_2);
			moveBar_UP (ref bar_up_3);
			moveBar_UP (ref bar_down_1);
			moveBar_UP (ref bar_down_2);
			moveBar_UP (ref bar_down_3);
		
			lastMoveUp = true;

			pokeball.transform.localRotation =  Quaternion.Euler(new Vector3( 0, 0, -5f + pokeball.transform.localEulerAngles.z));
		}
	}

	public void moveBarsDown()
	{
		if(!triggerUp)
		{
			triggerDown = false;
			// Snap the bars if we are changing direction
			if(lastMoveUp)
			{
				while (!checkSnap()) moveBarsUp();
				findBars();
			}

			// This may be bad
			if(checkSnap()) findBars();

			setSnapFalse();

			moveBar_DOWN(ref bar_0);
			moveBar_DOWN(ref bar_up_1);
			moveBar_DOWN(ref bar_up_2);
			moveBar_DOWN(ref bar_up_3);
			moveBar_DOWN(ref bar_down_1);
			moveBar_DOWN(ref bar_down_2);
			moveBar_DOWN(ref bar_down_3);
			
			lastMoveUp = false;

			pokeball.transform.localRotation = Quaternion.Euler(new Vector3( 0, 0, 5f + pokeball.transform.localEulerAngles.z));
		}
	}
		
	// moving bars
	public void moveBars()
	{
		// If we snapped, we switched bars, reassign them
		// This reduces call by 80%
		if(checkSnap()) findBars();

		deltaP = -scroller.velocity.y;

		// What is going on..
		float newPos =  1 - (float) (trackList) / (numOfItems - 1);


		if (deltaP < 0) 
		{
			if(newPos <= 0)
			{
				// Lock top
				// Stop the scroll
				scroller.velocity = new Vector2(0f, 0f);
				scroller.verticalNormalizedPosition = 0f;
				triggerDown = true;
			}
			for(int quicker = (int) (Math.Abs(deltaP)/scrollRate); quicker >= 0; quicker--)
			moveBarsUp();

		}
		else if (deltaP > 0)
		{
			if(newPos >= 1)
			{
				// Lock top
				// Stop the scroll
				pokeball.transform.localRotation =  Quaternion.Euler(new Vector3( 0, 0, 0));
				scroller.velocity = new Vector2(0f, 0f);
				scroller.verticalNormalizedPosition = 1f;
				triggerUp = true;
			}

			for(int quicker = (int) (Math.Abs(deltaP)/scrollRate); quicker >= 0; quicker--)
			moveBarsDown();

		}
		// Like wtf.. velocity is negative on output, but positive internally
		scroller.velocity = new Vector2(0f, -deltaP);
		
	
	}


	// Use this for initialization
	void Start ()
	{
		// Find the scroll bar
		GameObject scroll = GameObject.FindWithTag ("Scroll");
		if (scroll != null) scroller = scroll.GetComponent<ScrollRect> ();
		else Debug.Log ("Cannot find Scroll instance");	

		GameObject pokeImg = GameObject.FindWithTag ("Pokeball");
		if (scroll != null) pokeball = pokeImg.GetComponent<Image> ();
		else Debug.Log ("Cannot find Pokeball instance");	

		Canvas temp  = GetComponent<Canvas> ();
		scale = temp.scaleFactor * scroll.transform.localScale.x;

		scroller.scrollSensitivity = 1/100000f;

	}

	void Update() 
	{

	}

}
