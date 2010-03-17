package com.sununet.dao;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.springframework.transaction.annotation.Transactional;

import com.sununet.SpringTestCase;
import com.sununet.domain.Volontaire;

public class VolontaireDaoSpringJdbcTest extends SpringTestCase {

	private IVolontaireDao volontaireDao;

	@Resource(name="volontaireDao")
	public void setVolontaireDao(IVolontaireDao volontaireDao) {
		this.volontaireDao = volontaireDao;
	}
	
	@Test @Transactional
	public void testAddVolontaire() throws Exception {
		
		Volontaire volontaire = new Volontaire();
		volontaire.setMembre(true);
		volontaire.setAccord(true);
		volontaire.setNombreHeure(new Integer("60"));
		volontaire.setLocation("dakar");
		volontaire.setLogement(true);
		volontaire.setNourriture(true);
		volontaire.setAddressLigne1("4401 nw 39th st");
		volontaire.setAddressLigne2("apt 423");
		volontaire.setVille("okc");
		volontaire.setPays("usa");
		volontaire.setCodePostal("73112");
		volontaire.setPrenom("mouhamadou");
		volontaire.setNom("bop");
		volontaire.setTitre("software engineer 2");
		volontaire.setProfession("it & software developement");
		int result = volontaireDao.addVolontaire(volontaire);
		assertEquals(1, result);
		
	}
	
	@Test @Transactional
	public void testGetVolontaire() throws Exception {
		
		Volontaire volontaire = volontaireDao.getVolontaire(new Integer("1"));
		assertNotNull(volontaire);
		assertEquals(1, volontaire.getId().intValue());
	}
	
	@Test @Transactional
	public void testGetAllVolontaire() throws Exception {
		
		List<Volontaire> allVolontaires = volontaireDao.getAllVolontaire();
		assertNotNull(allVolontaires);
	}
	
	@Test @Transactional
	public void testUpdateVolontaire() throws Exception {
		
		Volontaire volontaire = volontaireDao.getVolontaire(new Integer("1"));
		assertNotNull(volontaire);
		assertEquals(1, volontaire.getId().intValue());
		volontaire.setLocation("oklahoma city");
		volontaire.setAccord(false);
		volontaire.setMembre(false);
		
		int result = volontaireDao.modifyVolontaire(volontaire);
		assertEquals(1, result);
	}
}
