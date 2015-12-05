using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.EventSystems;


public class selectEvo : MonoBehaviour, ISelectHandler// required interface when using the OnSelect method.
{

	private GameObject evos;


	void Start ()
	{
		evos = GameObject.FindWithTag ("Evolutions");
		if(evos == null) Debug.Log ("Cannot find Evolutions game object");
	}
	//Do this when the selectable UI object is selected.
	public void OnSelect (BaseEventData eventData) 
	{
		evos.GetComponent<Evolutions> ().evaluateTag (this.tag);
	}
}
