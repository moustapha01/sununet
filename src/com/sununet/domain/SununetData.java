package com.sununet.domain;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class SununetData implements Serializable{

	private Integer id;
	private String addressLigne1;
	private String addressLigne2;
	private String ville;
	private String pays;
	private String codePostal;
	private String email;
	private String telephone;
	private boolean logement;
	private boolean nourriture;	
	private static Map<Boolean, String> ouiNonOptions;
	
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getAddressLigne1() {
		return addressLigne1;
	}
	
	public void setAddressLigne1(String addressLigne1) {
		this.addressLigne1 = addressLigne1;
	}
	
	public String getAddressLigne2() {
		return addressLigne2;
	}
	
	public void setAddressLigne2(String addressLigne2) {
		this.addressLigne2 = addressLigne2;
	}
	
	public String getVille() {
		return ville;
	}
	
	public void setVille(String ville) {
		this.ville = ville;
	}
	
	public String getPays() {
		return pays;
	}
	
	public void setPays(String pays) {
		this.pays = pays;
	}
	
	public String getCodePostal() {
		return codePostal;
	}
	
	public void setCodePostal(String codePostal) {
		this.codePostal = codePostal;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getTelephone() {
		return telephone;
	}
	
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	
	public boolean isLogement() {
		return logement;
	}
	
	public void setLogement(boolean logement) {
		this.logement = logement;
	}
	
	public boolean isNourriture() {
		return nourriture;
	}
	
	public void setNourriture(boolean nourriture) {
		this.nourriture = nourriture;
	}
		
	public Map<Boolean, String> getOuiNonOptions() {
		if(ouiNonOptions == null){
			ouiNonOptions = new HashMap<Boolean, String>();
			ouiNonOptions.put(true, "Oui");
			ouiNonOptions.put(false, "Non");
		}
		return ouiNonOptions;
	}	
	
	
}
