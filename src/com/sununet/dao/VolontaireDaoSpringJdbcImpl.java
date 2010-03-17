package com.sununet.dao;

import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.sununet.dao.sql.*;
import com.sununet.domain.Volontaire;


public class VolontaireDaoSpringJdbcImpl extends JdbcDaoSupport implements IVolontaireDao {

	private SelectVolontaire selectAll;
	private SelectVolontaire selectVolontaire;
	private InsertVolontaire insertVolontaire;
	private UpdateVolontaire updateVolontaire;
	private DeleteVolontaire deleteVolontaire;
	
	public synchronized int addVolontaire(Volontaire volontaire) throws SQLException {

		if(insertVolontaire == null){
			insertVolontaire = new InsertVolontaire(this.getDataSource());
		}
		return insertVolontaire.update(VolontaireRow.getParamList(volontaire, "add"));
	}

	public synchronized int deleteVolontaire(Integer id) throws SQLException {
		// TODO Auto-generated method stub
		return 1;
	}

	public synchronized List<Volontaire> getAllVolontaire() throws SQLException {
		
		if(selectAll == null){
			selectAll = new SelectVolontaire(this.getDataSource());
		}
		List<Volontaire> allVolontaires = selectAll.execute();
		if(allVolontaires != null){
			return allVolontaires;
		}
		else{
			return null;
		}
		
	}

	public synchronized Volontaire getVolontaire(Integer id) throws SQLException {
		
		if(selectVolontaire == null){
			selectVolontaire = new SelectVolontaire();
			selectVolontaire.SelectVolontaireById(this.getDataSource());
		}
	    Object[] params = new Object[1];
	    params[0] = id;		
		List<Volontaire> volontaireList = selectVolontaire.execute(params);
		if(volontaireList != null){
			return volontaireList.get(0);
		}
		else{
			return null;
		}
	}

	public synchronized int modifyVolontaire(Volontaire volontaire) throws SQLException {
	
		if(updateVolontaire == null){
			updateVolontaire = new UpdateVolontaire(this.getDataSource());
		}
		return updateVolontaire.update(VolontaireRow.getParamList(volontaire, "update"));
	}

}
