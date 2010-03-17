package com.sununet.dao.sql;

import javax.sql.DataSource;

import org.springframework.jdbc.object.SqlUpdate;

public class UpdateDemandeur extends SqlUpdate {

	public UpdateDemandeur() {
		super();
	}

	public UpdateDemandeur(DataSource ds) {

		super();
		this.setDataSource(ds);
		this.setSql("update demandeurs set  " 		+
					DemandeurRow.ORGANISATION 	  	+		"= ?, " +
					DemandeurRow.BESOIN_VOLONTAIRE 	+		"= ?, " +
					DemandeurRow.COMPETENCE 	  	+		"= ?, " +
					DemandeurRow.DUREE 	  			+		"= ?, " +
					DemandeurRow.LOGEMENT 	  		+		"= ?, " +
					DemandeurRow.NOURRITURE 	  	+		"= ?, " +
					DemandeurRow.PERDIEM 	  		+		"= ?, " +
					DemandeurRow.UTILISATION_COMP 	+		"= ?, " +
					DemandeurRow.SECTEUR_ACTIVITE 	+		"= ?, " +
					DemandeurRow.RESPONSABLE 	  	+		"= ?, " +
					DemandeurRow.ADDRESS_LIGNE1 	+		"= ?, " +
					DemandeurRow.ADDRESS_LIGNE2 	+		"= ?, " +
					DemandeurRow.VILLE 	  			+		"= ?, " +
					DemandeurRow.PAYS 	  			+		"= ?, " +
					DemandeurRow.CODE_POSTAL 	  	+		"= ?, " +
					DemandeurRow.EMAIL 	  			+		"= ?, " +
					DemandeurRow.DATE_DEMARRAGE 	+		"= ?, " +
					DemandeurRow.DATE_CLOTURE 	  	+		"= ?, " +
					DemandeurRow.TELEPHONE 	  		+		"= ?, " +
					DemandeurRow.NOM_SOCIETE 	  	+		"= ?, " +
					DemandeurRow.STATUS		 	  	+		"= ?, " +
					DemandeurRow.PREVIEW	 	  	+		"= ?  " +
					"where id 	  		= ?  ");

		declareParameter(DemandeurRow.SQL_ORGANISATION);
		declareParameter(DemandeurRow.SQL_BESOIN_VOLONTAIRE);
		declareParameter(DemandeurRow.SQL_COMPETENCE);
		declareParameter(DemandeurRow.SQL_DUREE);
		declareParameter(DemandeurRow.SQL_LOGEMENT);
		declareParameter(DemandeurRow.SQL_NOURRITURE);
		declareParameter(DemandeurRow.SQL_PERDIEM);
		declareParameter(DemandeurRow.SQL_UTILISATION_COMP);
		declareParameter(DemandeurRow.SQL_SECTEUR_ACTIVITE);
		declareParameter(DemandeurRow.SQL_RESPONSABLE);
		declareParameter(DemandeurRow.SQL_ADDRESS_LIGNE1);
		declareParameter(DemandeurRow.SQL_ADDRESS_LIGNE2);
		declareParameter(DemandeurRow.SQL_VILLE);
		declareParameter(DemandeurRow.SQL_PAYS);
		declareParameter(DemandeurRow.SQL_CODE_POSTAL);	
		declareParameter(DemandeurRow.SQL_EMAIL);
		declareParameter(DemandeurRow.SQL_DATE_DEMARRAGE);
		declareParameter(DemandeurRow.SQL_DATE_CLOTURE);
		declareParameter(DemandeurRow.SQL_TELEPHONE);
		declareParameter(DemandeurRow.SQL_NOM_SOCIETE);
		declareParameter(DemandeurRow.SQL_STATUS);
		declareParameter(DemandeurRow.SQL_PREVIEW);
		declareParameter(DemandeurRow.SQL_ID);

		this.compile();
		
	}
	
	public void updateDemandeurStatus(DataSource ds){

		this.setDataSource(ds);
		this.setSql("update demandeur set "			+
					DemandeurRow.STATUS		 		+		"= ?  " +
					"where id 	  		= ?  ");
		
		declareParameter(DemandeurRow.SQL_STATUS);
		declareParameter(DemandeurRow.SQL_ID);

		this.compile();		
	}	
	
	

}
