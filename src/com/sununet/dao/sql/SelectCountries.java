package com.sununet.dao.sql;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.jdbc.object.MappingSqlQuery;

import com.sununet.domain.Country;

public class SelectCountries extends MappingSqlQuery {

	public SelectCountries(DataSource ds) {
		super(ds, "select * from countries");
		this.compile();
	}
	

	@Override
	protected Object mapRow(ResultSet rs, int numRows) throws SQLException {

		Country country = new Country();
		country.setCountryCode(rs.getString("country_code"));
		country.setDescription(rs.getString("description"));
		
		return country;
	}	

	
}
