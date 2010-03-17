package com.sununet.dao.sql;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;

import javax.sql.DataSource;

import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.object.MappingSqlQuery;
import com.sununet.domain.Volontaire;

public class SelectVolontaire extends MappingSqlQuery{

	public SelectVolontaire() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public SelectVolontaire(DataSource ds){
		super(ds, "select * from volontaires");
		super.compile();
	}
	
	public void SelectVolontaireById(DataSource ds){
		this.setDataSource(ds);
		this.setSql("select * from volontaires where id=?");
		this.declareParameter(new SqlParameter("id", Types.INTEGER));
		this.compile();		
	}
	
	@Override
	protected Object mapRow(ResultSet rs, int rowNumber) throws SQLException {
		Volontaire volontaire = new Volontaire();
		volontaire.setId(rs.getInt("id"));
		volontaire.setMembre(rs.getBoolean(VolontaireRow.MEMBRE));
		volontaire.setAccord(rs.getBoolean(VolontaireRow.ACCORD));
		volontaire.setNombreHeure(rs.getInt(VolontaireRow.NUM_HEURES));
		volontaire.setLocation(rs.getString(VolontaireRow.LOCATION));
		volontaire.setLogement(rs.getBoolean(VolontaireRow.LOGEMENT));
		volontaire.setNourriture(rs.getBoolean(VolontaireRow.NOURRITURE));
		volontaire.setAddressLigne1(rs.getString(VolontaireRow.ADDRESS_LIGNE1));
		volontaire.setAddressLigne2(rs.getString(VolontaireRow.ADDRESS_LIGNE2));
		volontaire.setVille(rs.getString(VolontaireRow.VILLE));
		volontaire.setPays(rs.getString(VolontaireRow.PAYS));
		volontaire.setCodePostal(rs.getString(VolontaireRow.CODE_POSTAL));
		volontaire.setPrenom(rs.getString(VolontaireRow.PRENOM));
		volontaire.setNom(rs.getString(VolontaireRow.NOM));
		volontaire.setTitre(rs.getString(VolontaireRow.TITRE));
		volontaire.setProfession(rs.getString(VolontaireRow.PROFESSION));
		volontaire.setEmail(rs.getString(VolontaireRow.EMAIL));
		volontaire.setTelephone(rs.getString(VolontaireRow.TELEPHONE));
		return volontaire;
	}	

}
