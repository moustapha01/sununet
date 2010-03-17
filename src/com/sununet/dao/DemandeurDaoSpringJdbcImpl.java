package com.sununet.dao;

import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.sununet.dao.sql.DemandeurRow;
import com.sununet.dao.sql.InsertDemandeur;
import com.sununet.dao.sql.SelectDemandeur;
import com.sununet.dao.sql.UpdateDemandeur;
import com.sununet.domain.Demandeur;

public class DemandeurDaoSpringJdbcImpl extends JdbcDaoSupport implements IDemandeurDao{

	private InsertDemandeur insertDemandeur;
	private SelectDemandeur selectById;
	private SelectDemandeur selectAll;
	private SelectDemandeur selectPreviewDemandeur;
	private SelectDemandeur selectByStatus;
	private UpdateDemandeur updateDemandeur;
	private UpdateDemandeur updateDemandeurStatus;
	
	public synchronized int addDemandeur(Demandeur demandeur) throws SQLException {
		
		if(insertDemandeur == null){
			insertDemandeur = new InsertDemandeur(this.getDataSource());
		}
		return insertDemandeur.update(DemandeurRow.getParamList(demandeur, "add"));
	}

	public synchronized int deleteDemandeur(Integer id) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	public synchronized List<Demandeur> getAllDemandeur() throws SQLException {
		if(selectAll == null){
			selectAll = new SelectDemandeur(this.getDataSource());
		}
		List<Demandeur> allDemandeurs = selectAll.execute();
		if(allDemandeurs != null){
			return allDemandeurs;
		}
		else{
			return null;
		}
	}

	public synchronized Demandeur getDemandeur(Integer id) throws SQLException {
		
		if(selectById == null){
			selectById = new SelectDemandeur();
			selectById.SelectDemandeurById(this.getDataSource());
		}

		
		Object[] params = new Object[1];
		params[0] = id;
		List<Demandeur> demandeurList = selectById.execute(params);
		if(demandeurList != null){
			return demandeurList.get(0);
		}
		else{
			return null;
		}		
	}

	public synchronized List<Demandeur> getDemandeurByStatus(String status) throws SQLException {
		
		if(selectByStatus == null){
			selectByStatus = new SelectDemandeur();
			selectByStatus.SelectDemandeurByStatus(this.getDataSource());
		}
		Object[] params = new Object[1];
		params[0] = status;
		List<Demandeur> demandeurList = selectByStatus.execute(params);
		return demandeurList;
	}
	
	public synchronized List<Demandeur> getPreviewDemandeurs(Boolean previewFlag) throws SQLException {
		
		if(selectPreviewDemandeur == null){
			selectPreviewDemandeur = new SelectDemandeur();
			selectPreviewDemandeur.SelectPreviewDemandeur(this.getDataSource());
		}
		Object[] params = new Object[2];
		params[0] = previewFlag;
		params[1] = "active";
		List<Demandeur> demandeurList = selectPreviewDemandeur.execute(params);
		return demandeurList;
	}

	public synchronized int modifyDemandeur(Demandeur demandeur) throws SQLException {

		if(updateDemandeur == null){
			updateDemandeur = new UpdateDemandeur(this.getDataSource());
		}
		return updateDemandeur.update(DemandeurRow.getParamList(demandeur, "update"));
	}

	public synchronized int updateStatus(Integer id, String status) throws SQLException {

		if(updateDemandeurStatus == null){
			updateDemandeurStatus = new UpdateDemandeur();
			updateDemandeurStatus.updateDemandeurStatus(this.getDataSource());
		}
		
		Object[] params = new Object[2];
		params[0] = id;
		params[1] = status;
		
		return updateDemandeurStatus.update(params);
	}
	
	
	
	
}
