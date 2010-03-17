package com.sununet.domain;

import java.util.HashMap;
import java.util.Map;

public class Volontaire extends SununetData{

	private Integer id;
	private boolean membre;
	private boolean accord;
	private Integer nombreHeure;
	private String location;
	private String prenom;
	private String nom;
	private String titre;
	private String profession;

	private static Map<Integer, String> nombreHeuresOptions;	
	
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public boolean isMembre() {
		return membre;
	}
	
	public void setMembre(boolean membre) {
		this.membre = membre;
	}
	
	public boolean isAccord() {
		return accord;
	}
	
	public void setAccord(boolean accord) {
		this.accord = accord;
	}
	
	public Integer getNombreHeure() {
		return nombreHeure;
	}
	
	public void setNombreHeure(Integer nombreHeure) {
		this.nombreHeure = nombreHeure;
	}
	
	public String getLocation() {
		return location;
	}
	
	public void setLocation(String location) {
		this.location = location;
	}
	
	public String getPrenom() {
		return prenom;
	}
	
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	
	public String getNom() {
		return nom;
	}
	
	public void setNom(String nom) {
		this.nom = nom;
	}
	
	public String getTitre() {
		return titre;
	}
	
	public void setTitre(String titre) {
		this.titre = titre;
	}
	
	public String getProfession() {
		return profession;
	}
	
	public void setProfession(String profession) {
		this.profession = profession;
	}

	public Map<Integer, String> getNombreHeuresOptions() {
		if(nombreHeuresOptions == null){
			nombreHeuresOptions = new HashMap<Integer, String>();
			nombreHeuresOptions.put(new Integer("20"), "20h");
			nombreHeuresOptions.put(new Integer("40"), "40h");
			nombreHeuresOptions.put(new Integer("80"), "80h");
			nombreHeuresOptions.put(new Integer("120"), "120h");
		}
		return nombreHeuresOptions;
	}
	
}
