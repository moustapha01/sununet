package com.sununet.service;

import java.util.Date;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.sununet.domain.Demandeur;

public class DemandeurValidator implements Validator{

	public boolean supports(Class arg0) {
		return Demandeur.class.equals(arg0);
	}

	public void validate(Object object, Errors errors) {
		
		Date startDate = ((Demandeur)object).getDateDemarrage();
		Date endDate = ((Demandeur)object).getDateCloture();
		
	    if (startDate == null || endDate == null) {  
	    	errors.rejectValue("dateDemarrage", "required", "Starting Date is required.");
	    }

  	    if (startDate != null && endDate != null && endDate.before(startDate)) {  
	    	errors.rejectValue("dateCloture", "notbefore.startdate", "End date cannot be before start date.");  
	    }  
		
		ValidationUtils.rejectIfEmpty(errors, "organisation", "required");
		ValidationUtils.rejectIfEmpty(errors, "besoinVolontaire", "required");
		ValidationUtils.rejectIfEmpty(errors, "competence", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "duree", "required");
		ValidationUtils.rejectIfEmpty(errors, "nourriture", "required");
		ValidationUtils.rejectIfEmpty(errors, "perdiem", "required");
		ValidationUtils.rejectIfEmpty(errors, "logement", "required");
		
		
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "addressLigne1", "required");
//		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "addressLigne2", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "ville", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pays", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "codePostal", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "utilisation", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "secteurActivite", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nomSociete", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "responsable", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "telephone", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "required");
		
	}

	
}
