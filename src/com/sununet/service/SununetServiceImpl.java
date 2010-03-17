package com.sununet.service;

import java.sql.SQLException;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import com.sununet.dao.ICountryDao;
import com.sununet.dao.IDemandeurDao;
import com.sununet.dao.IVolontaireDao;
import com.sununet.domain.Country;
import com.sununet.domain.Demandeur;
import com.sununet.domain.Volontaire;

public class SununetServiceImpl implements ISununetService {
	
	private static final String ACTIVE = "active";
	private static final String PENDING = "pending";
	private static final String HISTORY = "history";
	
	private IVolontaireDao volontaireDao;
	private IDemandeurDao demandeurDao;
	private ICountryDao countryDao;
	
	static final Comparator<Demandeur> DEMANDEUR_LIST_ORDER = new Comparator<Demandeur>(){
		public int compare(Demandeur deur1, Demandeur deur2){
			int result = deur1.getDateDemarrage().compareTo(deur2.getDateDemarrage());
			return result;
		}
	};	
	
	public void setVolontaireDao(IVolontaireDao volontaireDao) {
		this.volontaireDao = volontaireDao;
	}

	public void setDemandeurDao(IDemandeurDao demandeurDao) {
		this.demandeurDao = demandeurDao;
	}

	public void setCountryDao(ICountryDao countryDao) {
		this.countryDao = countryDao;
	}

	public int addVolontaire(Volontaire volontaire) throws SQLException {
		return volontaireDao.addVolontaire(volontaire);
	}

	public List<Volontaire> getAllVolontaire() throws SQLException{
		return volontaireDao.getAllVolontaire();
	}

	public Volontaire getVolontaire(Integer id) throws SQLException {
		return volontaireDao.getVolontaire(id);
	}
	
	public int deleteVolontaire(Integer id) throws SQLException {
		return volontaireDao.deleteVolontaire(id);
	}	

	public int modifyVolontaire(Volontaire volontaire) throws SQLException {
		return volontaireDao.modifyVolontaire(volontaire);
	}
	
	public int addDemandeur(Demandeur demandeur) throws SQLException {
		
		demandeur.setStatus(PENDING);
		return demandeurDao.addDemandeur(demandeur);
	}

	public List<Demandeur> getDemandeurByStatus(String status) throws SQLException {

		return demandeurDao.getDemandeurByStatus(status);
	}

	public List<Demandeur> getAllDemandeur() throws SQLException {
		List<Demandeur> demandeurList = demandeurDao.getAllDemandeur();
		Collections.sort(demandeurList, DEMANDEUR_LIST_ORDER);
		return demandeurList;
	}

	
	public List<Demandeur> getPreviewDemandeurs(Boolean previewFlag)
			throws SQLException {
		
		return demandeurDao.getPreviewDemandeurs(previewFlag);
	}

	public Demandeur getDemandeur(Integer id) throws SQLException {
		return demandeurDao.getDemandeur(id);
	}	

	public int modifyDemandeur(Demandeur demandeur) throws SQLException {
		return demandeurDao.modifyDemandeur(demandeur);
	}

	public int updateStatus(Integer id, String status) throws SQLException {
		return demandeurDao.updateStatus(id, status);
	}

	public int deleteDemandeur(Integer id) throws SQLException {
		return demandeurDao.deleteDemandeur(id);
	}

	public List<Country> findAll() throws SQLException {
		return countryDao.findAll();
	}

	
}
