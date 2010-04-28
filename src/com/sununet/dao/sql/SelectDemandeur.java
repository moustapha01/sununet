package com.sununet.dao.sql;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.object.MappingSqlQuery;

import com.sununet.domain.Demandeur;

public class SelectDemandeur extends MappingSqlQuery{

	public SelectDemandeur() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	public SelectDemandeur(DataSource ds) {
		super(ds, "select * from demandeurs");
		this.compile();
	}

	public void SelectDemandeurById(DataSource ds){
		this.setDataSource(ds);
		this.setSql("select * from demandeurs where id=?");
		this.declareParameter(new SqlParameter("id", Types.INTEGER));
		this.compile();
	}
	
	public void SelectPreviewDemandeur(DataSource ds){
		this.setDataSource(ds);
		this.setSql("select * from demandeurs where preview=? and status=?");
		this.declareParameter(new SqlParameter("preview", Types.BOOLEAN));
		this.declareParameter(new SqlParameter("status", Types.VARCHAR));
		this.compile();
	}
	
	public void SelectDemandeurByStatus(DataSource ds){
		
		this.setDataSource(ds);
		this.setSql("select * from demandeurs where status=?");
		this.declareParameter(new SqlParameter("status", Types.VARCHAR));
		this.compile();		
	}
	
	@Override
	protected Object mapRow(ResultSet rs, int rowNum) throws SQLException {
		Demandeur demandeur = new Demandeur();
		demandeur.setId(rs.getInt(DemandeurRow.ID));
		demandeur.setOrganisation(rs.getBoolean(DemandeurRow.ORGANISATION));
		demandeur.setBesoinVolontaire(rs.getBoolean(DemandeurRow.BESOIN_VOLONTAIRE));
		demandeur.setCompetence(rs.getString(DemandeurRow.COMPETENCE));
		demandeur.setUtilisation(rs.getString(DemandeurRow.UTILISATION_COMP));
		demandeur.setLogement(rs.getBoolean(DemandeurRow.LOGEMENT));
		demandeur.setNourriture(rs.getBoolean(DemandeurRow.NOURRITURE));
		demandeur.setPerdiem(rs.getBoolean(DemandeurRow.PERDIEM));
		demandeur.setAddressLigne1(rs.getString(DemandeurRow.ADDRESS_LIGNE1));
		demandeur.setAddressLigne2(rs.getString(DemandeurRow.ADDRESS_LIGNE2));
		demandeur.setVille(rs.getString(DemandeurRow.VILLE));
		demandeur.setPays(rs.getString(DemandeurRow.PAYS));
		demandeur.setDateCloture(rs.getDate(DemandeurRow.DATE_CLOTURE));
		demandeur.setDateDemarrage(rs.getDate(DemandeurRow.DATE_DEMARRAGE));
		demandeur.setCodePostal(rs.getString(DemandeurRow.CODE_POSTAL));
		demandeur.setEmail(rs.getString(DemandeurRow.EMAIL));
		demandeur.setNomSociete(rs.getString(DemandeurRow.NOM_SOCIETE));
		demandeur.setDuree(rs.getString(DemandeurRow.DUREE));
		demandeur.setResponsable(rs.getString(DemandeurRow.RESPONSABLE));
		demandeur.setSecteurActivite(rs.getString(DemandeurRow.SECTEUR_ACTIVITE));
		demandeur.setStatus(rs.getString(DemandeurRow.STATUS));
		demandeur.setPreview(rs.getBoolean(DemandeurRow.PREVIEW));
		demandeur.setTelephone(rs.getString(DemandeurRow.TELEPHONE));
		
		return demandeur;
	}
	
	

}
