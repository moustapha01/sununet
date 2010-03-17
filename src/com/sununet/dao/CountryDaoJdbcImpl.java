package com.sununet.dao;

import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.sununet.dao.sql.SelectCountries;
import com.sununet.domain.Country;

public class CountryDaoJdbcImpl extends JdbcDaoSupport implements ICountryDao{

	private SelectCountries selectCountries;
	
	public List<Country> findAll() throws SQLException {

		if(selectCountries == null){
			selectCountries = new SelectCountries(this.getDataSource());
		}
		return selectCountries.execute();
	}

	
}
