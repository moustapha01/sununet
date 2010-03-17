package com.sununet.service;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;

public class EmailNotificationService {

	private MailSender mailSender;
	private SimpleMailMessage templateMessage;
	
	public static final Log log = LogFactory.getLog(EmailNotificationService.class);
	
	
	public EmailNotificationService(MailSender mailSender) {

		this.mailSender = mailSender;
	}
	

	public void sendNotification(){
		
		System.out.println("MAIL HAS BEEN SENT");
		
		try{
			this.mailSender.send(this.templateMessage);
		}
		catch(Exception ex){
			log.fatal("Email notification message could not be sent", ex);
		}
	}


	public SimpleMailMessage getTemplateMessage() {
		return templateMessage;
	}


	public void setTemplateMessage(SimpleMailMessage templateMessage) {
		this.templateMessage = templateMessage;
	}
	
	
}
