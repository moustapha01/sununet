package com.sununet.service;

import java.sql.SQLException;
import java.util.List;


import com.sununet.domain.Country;
import com.sununet.domain.Demandeur;
import com.sununet.domain.Volontaire;

public interface ISununetService {

	public Volontaire getVolontaire(Integer id) throws SQLException;
	
	public List<Volontaire> getAllVolontaire() throws SQLException;
	
	public int deleteVolontaire(Integer id) throws SQLException;
	
	public Demandeur getDemandeur(Integer id) throws SQLException;
	
	public List<Demandeur> getAllDemandeur() throws SQLException;
	
	public List<Demandeur> getDemandeurByStatus(String status) throws SQLException;
	
	public List<Demandeur> getPreviewDemandeurs(Boolean previewFlag) throws SQLException;
	
	public int deleteDemandeur(Integer id) throws SQLException;
	
	public int addDemandeur(Demandeur demandeur) throws SQLException;
	
	public int addVolontaire(Volontaire volontaire) throws SQLException;
	
	public int modifyDemandeur(Demandeur demandeur) throws SQLException;
	
	public int updateStatus(Integer id, String status) throws SQLException;
	
	public int modifyVolontaire(Volontaire volontaire) throws SQLException;
	
	public List<Country> findAll() throws SQLException;
}
