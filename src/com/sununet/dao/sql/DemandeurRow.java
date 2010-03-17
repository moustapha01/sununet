package com.sununet.dao.sql;

import java.sql.Types;
import java.util.ArrayList;

import org.springframework.jdbc.core.SqlParameter;

import com.sununet.domain.Demandeur;

public class DemandeurRow {

	static final String ID = "id";
	static final String ORGANISATION = "organisation";
	static final String BESOIN_VOLONTAIRE = "besoin_volontaire";
	static final String COMPETENCE = "competence";
	static final String DUREE = "duree";
	static final String LOGEMENT = "logement";
	static final String NOURRITURE = "nourriture";
	static final String PERDIEM = "perdiem";
	static final String UTILISATION_COMP = "utilisation_comp";
	static final String SECTEUR_ACTIVITE = "secteur_activite";
	static final String RESPONSABLE = "responsable";
	static final String ADDRESS_LIGNE1 = "address_ligne1";
	static final String ADDRESS_LIGNE2 = "address_ligne2";	
	static final String VILLE = "ville";
	static final String PAYS = "pays";
	static final String CODE_POSTAL = "code_postal";
	static final String EMAIL = "email";
	static final String DATE_DEMARRAGE = "date_demarrage";
	static final String DATE_CLOTURE = "date_cloture";
	static final String TELEPHONE= "telephone";
	static final String NOM_SOCIETE= "nom_societe";
	static final String STATUS = "status";
	static final String PREVIEW = "preview";
	static final String UPDATE = "update";
	static final String ADD = "add";
	
	
	static final SqlParameter SQL_ID = new SqlParameter(Types.INTEGER);
	static final SqlParameter SQL_ORGANISATION = new SqlParameter(Types.BOOLEAN);
	static final SqlParameter SQL_BESOIN_VOLONTAIRE = new SqlParameter(Types.BOOLEAN);
	static final SqlParameter SQL_COMPETENCE = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_DUREE = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_LOGEMENT = new SqlParameter(Types.BOOLEAN);
	static final SqlParameter SQL_NOURRITURE = new SqlParameter(Types.BOOLEAN);
	static final SqlParameter SQL_PERDIEM = new SqlParameter(Types.BOOLEAN);
	static final SqlParameter SQL_UTILISATION_COMP = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_SECTEUR_ACTIVITE = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_RESPONSABLE = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_ADDRESS_LIGNE1 = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_ADDRESS_LIGNE2 = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_VILLE = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_PAYS = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_CODE_POSTAL = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_EMAIL = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_DATE_DEMARRAGE = new SqlParameter(Types.DATE);
	static final SqlParameter SQL_DATE_CLOTURE = new SqlParameter(Types.DATE);
	static final SqlParameter SQL_TELEPHONE = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_NOM_SOCIETE = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_STATUS = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_PREVIEW = new SqlParameter(Types.BOOLEAN);

	
	public DemandeurRow() {
		super();
		// TODO Auto-generated constructor stub
	}

	public static Object[] getParamList(Demandeur demandeur, String operation){
		
		ArrayList<Object> list = new ArrayList<Object>();
		list.add(demandeur.isOrganisation());
		list.add(demandeur.isBesoinVolontaire());
		list.add(demandeur.getCompetence());
		list.add(demandeur.getDuree());
		list.add(demandeur.isLogement());
		list.add(demandeur.isNourriture());
		list.add(demandeur.isPerdiem());
		list.add(demandeur.getUtilisation());
		list.add(demandeur.getSecteurActivite());
		list.add(demandeur.getResponsable());
		list.add(demandeur.getAddressLigne1());
		list.add(demandeur.getAddressLigne2());
		list.add(demandeur.getVille());
		list.add(demandeur.getPays());
		list.add(demandeur.getCodePostal());
		list.add(demandeur.getEmail());
		list.add(demandeur.getDateDemarrage());
		list.add(demandeur.getDateCloture());
		list.add(demandeur.getTelephone());
		list.add(demandeur.getNomSociete());
		list.add(demandeur.getStatus());
		list.add(demandeur.isPreview());
		if(operation.equalsIgnoreCase(UPDATE)){
			list.add(demandeur.getId());
		}
		
		Object[] result = list.toArray();
		return result;
	}
}
