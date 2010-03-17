package com.sununet.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;
import org.springframework.web.servlet.view.RedirectView;

import com.sununet.domain.Country;
import com.sununet.domain.Volontaire;
import com.sununet.service.ISununetService;

public class VolontaireFormController extends SimpleFormController {

	private ISununetService sununetService;

	public void setSununetService(ISununetService sununetService) {
		this.sununetService = sununetService;
	}

    public ModelAndView onSubmit(Object command)
    throws ServletException, Exception {
	
    	sununetService.addVolontaire((Volontaire)command);
		return new ModelAndView(new RedirectView(getSuccessView()));
	}

	
    protected Object formBackingObject(HttpServletRequest request) throws ServletException {
        Volontaire volontaire = new Volontaire();
        return volontaire;
    }
	
	
	@Override
	protected Map referenceData(HttpServletRequest request) throws Exception {
		
		Map<String, Object> data = new HashMap<String, Object>();
		List<Country> countries = sununetService.findAll();
		data.put("countries", countries);
		
		return data;
	}
}
