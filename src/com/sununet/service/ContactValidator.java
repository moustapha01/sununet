package com.sununet.service;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.sununet.domain.Contact;

public class ContactValidator implements Validator {

	public boolean supports(Class arg0) {
		return (Contact.class.equals(arg0));
	}

	public void validate(Object object, Errors errors) {

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nom", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "commentaires", "required");
	}

	
}
