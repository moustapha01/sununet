package com.sununet.dao;

import java.sql.SQLException;
import java.util.List;

import com.sununet.domain.Country;

public interface ICountryDao {

	public List<Country> findAll() throws SQLException;
}
