package com.sununet.dao;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.springframework.transaction.annotation.Transactional;

import com.sununet.SpringTestCase;
import com.sununet.domain.Demandeur;

public class DemandeurDaoSpringJdbcTest extends SpringTestCase{

	private IDemandeurDao demandeurDao;

	@Resource(name="demandeurDao")
	public void setDemandeurDao(IDemandeurDao demandeurDao) {
		this.demandeurDao = demandeurDao;
	}
	
	@Test @Transactional
	public void testAddDemandeur() throws Exception{
		Demandeur demandeur = new Demandeur();
		demandeur.setOrganisation(true);
		demandeur.setBesoinVolontaire(true);
		demandeur.setDuree("3 mois");
		demandeur.setCompetence("programmeur");
		demandeur.setLogement(true);
		demandeur.setNourriture(true);
		demandeur.setPerdiem(true);
		demandeur.setAddressLigne1("Liberte 6");
		demandeur.setAddressLigne2("Villa 7901");
		demandeur.setVille("Dakar");
		demandeur.setPays("Senegal");
		demandeur.setCodePostal("11111");
		demandeur.setEmail("boustapha@gmail.com");
		demandeur.setNomSociete("thinkITPro");
		demandeur.setDateCloture(new Date());
		demandeur.setDateDemarrage(new Date());
		demandeur.setResponsable("Moustapha Bop");
		demandeur.setUtilisation("creer un environment pour les developeurs");
		demandeur.setSecteurActivite("IT Consulting");
		demandeur.setTelephone("405-942-0184");
		demandeur.setStatus("pending");
		
		int result = demandeurDao.addDemandeur(demandeur);
		assertEquals(1, result);

	}
	
	@Test @Transactional
	public void testGetDemandeur() throws Exception{
		Demandeur demandeur = demandeurDao.getDemandeur(new Integer("1"));
		assertNotNull(demandeur);
		assertEquals(1, demandeur.getId().intValue());
	}
	
	@Test @Transactional
	public void testGetAllDemandeur() throws Exception{
		List<Demandeur> allDemandeurs = demandeurDao.getAllDemandeur();
		assertNotNull(allDemandeurs);
	}
	
	@Test @Transactional
	public void testGetDemandeurByStatus() throws Exception{
		List<Demandeur> demandeurList = demandeurDao.getDemandeurByStatus("pending");
		assertNotNull(demandeurList);
	}
	
	
	public void testDeleteDemandeur(){
		
	}
	
	@Test @Transactional
	public void testModifyDemandeur() throws Exception{
		Demandeur demandeur = demandeurDao.getDemandeur(new Integer("21"));
		assertNotNull(demandeur);
		assertEquals(21, demandeur.getId().intValue());
		demandeur.setDuree("6 mois");
		demandeur.setSecteurActivite("finance");
		demandeur.setStatus("active");
		
		int result = demandeurDao.modifyDemandeur(demandeur);
		assertEquals(1, result);
	}
	
}
