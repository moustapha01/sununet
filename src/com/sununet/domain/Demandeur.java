package com.sununet.domain;

import java.util.Date;

public class Demandeur extends SununetData{

	private boolean organisation;
	private boolean besoinVolontaire;
	private String competence;
	private String duree;
	private Date dateDemarrage;
	private Date dateCloture;
	private boolean perdiem;
	private String utilisation;
	private String secteurActivite;
	private String nomSociete;
	private String responsable;
	private String status;
	private boolean preview;
	
	
	public Demandeur() {
		super();
	}

	public boolean isOrganisation() {
		return organisation;
	}
	
	public void setOrganisation(boolean organisation) {
		this.organisation = organisation;
	}
	
	public boolean isBesoinVolontaire() {
		return besoinVolontaire;
	}
	
	public void setBesoinVolontaire(boolean besoinVolontaire) {
		this.besoinVolontaire = besoinVolontaire;
	}
	
	public String getCompetence() {
		return competence;
	}
	
	public void setCompetence(String competence) {
		this.competence = competence;
	}
	
	public String getDuree() {
		return duree;
	}
	
	public void setDuree(String duree) {
		this.duree = duree;
	}
	
	public Date getDateDemarrage() {
		return dateDemarrage;
	}
	
	public void setDateDemarrage(Date dateDemarrage) {
		this.dateDemarrage = dateDemarrage;
	}
	
	public Date getDateCloture() {
		return dateCloture;
	}
	
	public void setDateCloture(Date dateCloture) {
		this.dateCloture = dateCloture;
	}
	
	public boolean isPerdiem() {
		return perdiem;
	}
	
	public void setPerdiem(boolean perdiem) {
		this.perdiem = perdiem;
	}
	
	public String getUtilisation() {
		return utilisation;
	}
	
	public void setUtilisation(String utilisation) {
		this.utilisation = utilisation;
	}
	
	public String getSecteurActivite() {
		return secteurActivite;
	}
	
	public void setSecteurActivite(String secteurActivite) {
		this.secteurActivite = secteurActivite;
	}
	
	public String getNomSociete() {
		return nomSociete;
	}
	
	public void setNomSociete(String nomSociete) {
		this.nomSociete = nomSociete;
	}
	
	public String getResponsable() {
		return responsable;
	}
	
	public void setResponsable(String responsable) {
		this.responsable = responsable;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public boolean isPreview() {
		return preview;
	}

	public void setPreview(boolean preview) {
		this.preview = preview;
	}
	
}
