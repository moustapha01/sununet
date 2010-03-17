package com.sununet.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;
import org.springframework.web.servlet.view.RedirectView;

import com.sununet.domain.Country;
import com.sununet.domain.Demandeur;
import com.sununet.service.EmailNotificationService;
import com.sununet.service.ISununetService;

public class DemandeurFormController extends SimpleFormController {

	private ISununetService sununetService;
	private EmailNotificationService emailNotificationService;

	public void setSununetService(ISununetService sununetService) {
		this.sununetService = sununetService;
	}

	
    public void setEmailNotificationService(
			EmailNotificationService emailNotificationService) {
		this.emailNotificationService = emailNotificationService;
	}


	public ModelAndView onSubmit(Object command)
    throws ServletException, Exception {

   		sununetService.addDemandeur((Demandeur)command);
   		emailNotificationService.sendNotification();
   		System.out.println("MAIL HAS BEEN SENT");
		return new ModelAndView(new RedirectView(getSuccessView()));
	}

	
    protected Object formBackingObject(HttpServletRequest request) throws ServletException {
    	Demandeur demandeur = new Demandeur();
        return demandeur;
    }
	
    protected void initBinder(HttpServletRequest request, ServletRequestDataBinder dataBinder) throws Exception{
	    
	    SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");  
	    CustomDateEditor editor = new CustomDateEditor(dateFormat, true);  
	    dataBinder.registerCustomEditor(Date.class, editor);  
	    
    }

	@Override
	protected Map referenceData(HttpServletRequest request) throws Exception {
		
		Map<String, Object> data = new HashMap<String, Object>();
		List<Country> countries = sununetService.findAll();
		data.put("countries", countries);
		
		return data;
	}
    
}
