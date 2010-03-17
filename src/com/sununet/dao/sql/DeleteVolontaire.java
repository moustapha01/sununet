package com.sununet.dao.sql;

import java.sql.Types;

import javax.sql.DataSource;

import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.object.SqlUpdate;

public class DeleteVolontaire extends SqlUpdate {

	public DeleteVolontaire() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DeleteVolontaire(DataSource ds) {
		super();
		this.setDataSource(ds);
		this.setSql("delete from volontaires where id=?");
		this.declareParameter(new SqlParameter(Types.INTEGER));
		this.compile();		
	}
	
}
