package com.sununet.dao.sql;

import javax.sql.DataSource;

import org.springframework.jdbc.object.SqlUpdate;

public class UpdateVolontaire extends SqlUpdate{

	public UpdateVolontaire() {
		super();
	}

	public UpdateVolontaire(DataSource ds) {

		super();
		this.setDataSource(ds);
		this.setSql("update volontaires set  "		+
					VolontaireRow.MEMBRE 	  		+		"= ?, " +
					VolontaireRow.ACCORD 			+		"= ?, " +
					VolontaireRow.NUM_HEURES  		+		"= ?, " +
					VolontaireRow.LOCATION 	  		+		"= ?, " +
					VolontaireRow.LOGEMENT 	  		+		"= ?, " +
					VolontaireRow.NOURRITURE 	  	+		"= ?, " +
					VolontaireRow.ADDRESS_LIGNE1 	+		"= ?, " +
					VolontaireRow.ADDRESS_LIGNE2 	+		"= ?, " +
					VolontaireRow.VILLE 			+		"= ?, " +
					VolontaireRow.PAYS 	  			+		"= ?, " +
					VolontaireRow.CODE_POSTAL 		+		"= ?, " +
					VolontaireRow.PRENOM 			+		"= ?, " +
					VolontaireRow.NOM 				+		"= ?, " +
					VolontaireRow.TITRE 			+		"= ?, " +
					VolontaireRow.PROFESSION 		+		"= ?, " +
					VolontaireRow.EMAIL 			+		"= ?, " +
					VolontaireRow.TELEPHONE 		+		"= ?  " +
					"where id 	  		= ?  ");
	
		declareParameter(VolontaireRow.SQL_MEMBRE);
		declareParameter(VolontaireRow.SQL_ACCORD);
		declareParameter(VolontaireRow.SQL_NUM_HEURES);
		declareParameter(VolontaireRow.SQL_LOCATION);
		declareParameter(VolontaireRow.SQL_LOGEMENT);
		declareParameter(VolontaireRow.SQL_NOURRITURE);
		declareParameter(VolontaireRow.SQL_ADDRESS_LIGNE1);
		declareParameter(VolontaireRow.SQL_ADDRESS_LIGNE2);
		declareParameter(VolontaireRow.SQL_VILLE);
		declareParameter(VolontaireRow.SQL_PAYS);
		declareParameter(VolontaireRow.SQL_CODE_POSTAL);
		declareParameter(VolontaireRow.SQL_PRENOM);
		declareParameter(VolontaireRow.SQL_NOM);
		declareParameter(VolontaireRow.SQL_TITRE);
		declareParameter(VolontaireRow.SQL_PROFESSION);
		declareParameter(VolontaireRow.SQL_EMAIL);
		declareParameter(VolontaireRow.SQL_TELEPHONE);
		declareParameter(VolontaireRow.SQL_ID);
	
		this.compile();
	}
	
	

}
