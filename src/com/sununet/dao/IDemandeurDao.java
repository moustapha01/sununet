package com.sununet.dao;

import java.sql.SQLException;
import java.util.List;

import com.sununet.domain.Demandeur;

public interface IDemandeurDao {

	/**
	 * @param id, primary key identifying a demandeur
	 * @return the Demandeur record return from the database
	 */
	public Demandeur getDemandeur(Integer id) throws SQLException;
	
	/**
	 * @return a list of all demandeur records in the database
	 */
	public List<Demandeur> getAllDemandeur() throws SQLException;
	
	
	/**
	 * @param status, the Demandeur status passed as a search parameter
	 * @return a list of Demandeur objects with status value indicated by
	 * parameter status
	 * @throws SQLException
	 */
	public List<Demandeur> getDemandeurByStatus(String status) throws SQLException;
	
	/**
	 * @param demandeur, the demandeur object to add
	 * @return 1 if record is inserted successfully
	 */
	public int addDemandeur(Demandeur demandeur) throws SQLException;
	
	/**
	 * @param id, primary key identifying demandeur record to be deleted
	 * @return 1 if demandeur record is deleted successfully
	 */
	public int deleteDemandeur(Integer id) throws SQLException;
	
	/**
	 * @param demandeur, the demandeur object to be modified
	 * @return 1 if the demandeur object is modified successfully
	 */
	public int modifyDemandeur(Demandeur demandeur) throws SQLException;
	
	
	/**
	 * @param id, the id of the demandeur being approved
	 * @return 1 if demandeur has its status updated to active
	 * @throws SQLException
	 */
	public int updateStatus(Integer id, String status) throws SQLException;
	
	/**
	 * @param previewFlag, the Demandeur preview flag passed as a search parameter
	 * @return a list of Demandeur objects with preview value indicated by
	 * parameter previewFlag
	 * @throws SQLException
	 */
	public List<Demandeur> getPreviewDemandeurs(Boolean previewFlag) throws SQLException;
	
}
