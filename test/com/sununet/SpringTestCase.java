package com.sununet;

import java.sql.Connection;

import javax.sql.DataSource;
import javax.annotation.Resource;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:/com/sununet/webApplicationContext.xml"})
@TransactionConfiguration(transactionManager="transactionManager", defaultRollback=false)
abstract public class SpringTestCase {

	private DataSource dataSource;
	  
	  
	public SpringTestCase() {
		super();
	}

	@Resource(name="dataSource")
	public void setDataSource(DataSource dataSource) {
	    this.dataSource = dataSource;
	}
	  
	public DataSource getDataSource() {
	    return this.dataSource;
	}
	  
	public Connection getConnection() throws Exception {
	    return this.dataSource.getConnection();
	}
}
