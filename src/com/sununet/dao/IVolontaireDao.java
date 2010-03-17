package com.sununet.dao;

import java.sql.SQLException;
import java.util.List;

import com.sununet.domain.Volontaire;

public interface IVolontaireDao {

	/**
	 * @param id, primary key identifying a volontaire
	 * @return the volontaire record return from the database
	 */
	public Volontaire getVolontaire(Integer id) throws SQLException;
	
	/**
	 * @return a list of all volontaire records in the database
	 */
	public List<Volontaire> getAllVolontaire() throws SQLException;
	
	/**
	 * @param volontaire, the volontaire object to add
	 * @return 1 if the volontaire record is inserted successfully
	 */
	public int addVolontaire(Volontaire volontaire) throws SQLException;
	
	/**
	 * @param id, primary key identifying volontaire record to be deleted
	 * @return 1 if volontaire record is deleted successfully
	 */
	public int deleteVolontaire(Integer id) throws SQLException;
	
	/**
	 * @param volontaire, the volontaire object to be modified
	 * @return 1 if the volontaire object is modified successfully
	 */
	public int modifyVolontaire(Volontaire volontaire) throws SQLException;	
	
}
