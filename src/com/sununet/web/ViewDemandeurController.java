package com.sununet.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.sununet.domain.Demandeur;
import com.sununet.service.ISununetService;

public class ViewDemandeurController extends AbstractController{

	private ISununetService sununetService;
	
	
	public void setSununetService(ISununetService sununetService) {
		this.sununetService = sununetService;
	}


	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest req,
			HttpServletResponse res) throws Exception {

		String id = req.getParameter("id");
		Integer intId = Integer.parseInt(id);
		
		Demandeur demandeur = sununetService.getDemandeur(intId);
		Map<String, Object> myModel = new HashMap<String, Object>();
		myModel.put("demandeur", demandeur);
		return new ModelAndView("viewdemandeur", "model", myModel);
	}
	
}