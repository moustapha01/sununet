package com.sununet.domain;

import java.io.*;

/**
 * Pojo representing a country object from the Dao layer to retrieve a list of all the countries.
 */


public class Country implements Serializable, Comparable<Country> {

	private String countryCode;		/** 2 letter abbreviation of a country */
	private String description;		/** actual country name */

	public String getCountryCode() {
		return countryCode;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public boolean equals(Object country){
		if(!(country instanceof Country))
			return false;
		Country c = (Country)country;
		return countryCode.equals(c.countryCode);
	}
	
	public int HashCode(){
		return 31*countryCode.hashCode();
	}
	
	public int compareTo(Country c){
		return countryCode.compareTo(c.countryCode);
	}
}
