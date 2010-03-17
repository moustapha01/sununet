package com.sununet.dao.sql;

import java.sql.Types;
import java.util.ArrayList;

import org.springframework.jdbc.core.SqlParameter;

import com.sununet.domain.Volontaire;

public class VolontaireRow {

	static final String ID = "id";
	static final String MEMBRE = "membre";
	static final String ACCORD = "accord";
	static final String NUM_HEURES = "num_heures";
	static final String LOCATION = "location";
	static final String LOGEMENT = "logement";
	static final String NOURRITURE = "nourriture";
	static final String ADDRESS_LIGNE1 = "address_ligne1";
	static final String ADDRESS_LIGNE2 = "address_ligne2";	
	static final String VILLE = "ville";
	static final String PAYS = "pays";
	static final String CODE_POSTAL = "code_postal";
	static final String PRENOM = "prenom";
	static final String NOM = "nom";
	static final String TITRE = "titre";
	static final String PROFESSION = "profession";
	static final String EMAIL = "email";
	static final String TELEPHONE = "telephone";
	static final String UPDATE = "update";
	static final String ADD = "add";
	
	
	static final SqlParameter SQL_ID = new SqlParameter(Types.INTEGER);
	static final SqlParameter SQL_MEMBRE = new SqlParameter(Types.BOOLEAN);
	static final SqlParameter SQL_ACCORD = new SqlParameter(Types.BOOLEAN);
	static final SqlParameter SQL_NUM_HEURES = new SqlParameter(Types.INTEGER);
	static final SqlParameter SQL_LOCATION = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_LOGEMENT = new SqlParameter(Types.BOOLEAN);
	static final SqlParameter SQL_NOURRITURE = new SqlParameter(Types.BOOLEAN);
	static final SqlParameter SQL_ADDRESS_LIGNE1 = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_ADDRESS_LIGNE2 = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_VILLE = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_PAYS = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_CODE_POSTAL = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_PRENOM = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_NOM = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_TITRE = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_PROFESSION = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_EMAIL = new SqlParameter(Types.VARCHAR);
	static final SqlParameter SQL_TELEPHONE = new SqlParameter(Types.VARCHAR);
	
	public VolontaireRow() {
		super();
		// TODO Auto-generated constructor stub
	}

	public static Object[] getParamList(Volontaire volontaire, String operation){
		
		ArrayList<Object> list = new ArrayList<Object>();
		list.add(volontaire.isMembre());
		list.add(volontaire.isAccord());
		list.add(volontaire.getNombreHeure());
		list.add(volontaire.getLocation());
		list.add(volontaire.isLogement());
		list.add(volontaire.isNourriture());
		list.add(volontaire.getAddressLigne1());
		list.add(volontaire.getAddressLigne2());
		list.add(volontaire.getVille());
		list.add(volontaire.getPays());
		list.add(volontaire.getCodePostal());
		list.add(volontaire.getPrenom());
		list.add(volontaire.getNom());
		list.add(volontaire.getTitre());
		list.add(volontaire.getProfession());
		list.add(volontaire.getEmail());
		list.add(volontaire.getTelephone());
		if(operation.equalsIgnoreCase(UPDATE)){
			list.add(volontaire.getId());
		}
		
		Object[] result = list.toArray();
		return result;
	}
}
