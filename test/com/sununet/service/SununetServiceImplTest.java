package com.sununet.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;
import org.springframework.transaction.annotation.Transactional;

import com.sununet.SpringTestCase;
import com.sununet.domain.Country;

public class SununetServiceImplTest extends SpringTestCase {
	
	ISununetService sununetService;
	
	@Resource(name="sununetService")
	public void setSununetService(ISununetService sununetService) {
		this.sununetService = sununetService;
	}


	@Test
	public void testGetOuiNonOptions(){

	}
	
	@Test @Transactional
	public void testGetCountries() throws Exception{
		List<Country> countries = sununetService.findAll();
		assertNotNull(countries);
	}

}
