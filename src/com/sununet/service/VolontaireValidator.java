package com.sununet.service;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.sununet.domain.Volontaire;

public class VolontaireValidator implements Validator{

	public boolean supports(Class arg0) {
		return (Volontaire.class.equals(arg0));
	}

	public void validate(Object object, Errors errors) {

		ValidationUtils.rejectIfEmpty(errors, "membre", "required");
		ValidationUtils.rejectIfEmpty(errors, "accord", "required");
		ValidationUtils.rejectIfEmpty(errors, "nombreHeure", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "location", "required");
		ValidationUtils.rejectIfEmpty(errors, "logement", "required");
		ValidationUtils.rejectIfEmpty(errors, "nourriture", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "addressLigne1", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "ville", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pays", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "codePostal", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "prenom", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nom", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "profession", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "required");
		
	}

}
