package com.sununet.web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;
import org.springframework.web.servlet.view.RedirectView;

import com.sununet.domain.Contact;
import com.sununet.service.EmailNotificationService;

public class ContactFormController extends SimpleFormController{

	private EmailNotificationService emailNotificationService;

	public void setEmailNotificationService(
			EmailNotificationService emailNotificationService) {
		this.emailNotificationService = emailNotificationService;
	}

	@Override
	protected ModelAndView onSubmit(Object command)
			throws Exception {

		Contact ct = (Contact)command;
		SimpleMailMessage msg = new SimpleMailMessage();
		msg.setFrom(ct.getEmail());
		msg.setTo("boustapha@yahoo.com");
		msg.setText(ct.getCommentaires());
		emailNotificationService.setTemplateMessage(msg);
		emailNotificationService.sendNotification();
		return new ModelAndView(new RedirectView(getSuccessView()));
	}
	
    protected Object formBackingObject(HttpServletRequest request) throws ServletException {
    	Contact contact = new Contact();
        return contact;
    }	
}