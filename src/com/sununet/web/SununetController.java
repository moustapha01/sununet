package com.sununet.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.sununet.domain.Demandeur;
import com.sununet.domain.Volontaire;
import com.sununet.service.ISununetService;

public class SununetController extends MultiActionController {

	private ISununetService sununetService;
	
	public void setSununetService(ISununetService sununetService) {
		this.sununetService = sununetService;
	}

	public SununetController() {
		super();
	}

	public ModelAndView getAllDemandeurs(HttpServletRequest req, HttpServletResponse res) 
			throws Exception {
		
		String type = req.getParameter("type");
		List<Demandeur> demandeurList = null;
		
		if(type == null || type.equals("nouveaux")){
			demandeurList = sununetService.getDemandeurByStatus("pending");
		}
		else if(type.equals("existant")){
			demandeurList = sununetService.getDemandeurByStatus("active");
		}
		else{
			demandeurList = sununetService.getDemandeurByStatus("history");
		}
		
		return getResolvedView("admindemandeur", "demandeurList", demandeurList);
	}	
	
	public ModelAndView getAllVolontaires(HttpServletRequest req, HttpServletResponse res) 
			throws Exception {
		
		List<Volontaire> volontaireList = sununetService.getAllVolontaire();
		return getResolvedView("adminvolontaire", "volontaireList", volontaireList);		
	}
	
	public ModelAndView approveDemandeur(HttpServletRequest req, HttpServletResponse res) 
			throws Exception {
		
		Demandeur demandeur = this.getDemandeurById(req);
		demandeur.setStatus("active");
		sununetService.modifyDemandeur(demandeur);
		List<Demandeur> demandeurList = sununetService.getDemandeurByStatus("pending");
		return getResolvedView("admindemandeur", "demandeurList", demandeurList);
	}
	
	public ModelAndView previewDemandeur(HttpServletRequest req, HttpServletResponse res)
			throws Exception {

		Demandeur demandeur = this.getDemandeurById(req);
		demandeur.setPreview(true);
		sununetService.modifyDemandeur(demandeur);
		List<Demandeur> demandeurList = sununetService.getDemandeurByStatus("pending");
		return getResolvedView("admindemandeur", "demandeurList", demandeurList);	
	}
	
	public ModelAndView getDemandeur(HttpServletRequest req, HttpServletResponse res) 
			throws Exception {
		
		Demandeur demandeur = this.getDemandeurById(req);
		return getResolvedView("viewdemandeur", "demandeur", demandeur);	
	}
	
	public ModelAndView getVolontaire(HttpServletRequest req, HttpServletResponse res) 
		throws Exception {

		String id = req.getParameter("id");
		Integer intId = Integer.parseInt(id);
		
		Volontaire volontaire = sununetService.getVolontaire(intId);
		return getResolvedView("viewvolontaire", "volontaire", volontaire);	
	}	
	
	public ModelAndView gotoConfirmation(HttpServletRequest req,
			HttpServletResponse res) throws Exception {
		
		return new ModelAndView("confirmation");
	}
	
	public ModelAndView gotoFaqs(HttpServletRequest req,
			HttpServletResponse res) throws Exception {
		
		return new ModelAndView("faqs");
	}
	
	private Demandeur getDemandeurById(HttpServletRequest req) throws Exception{
		
		String id = req.getParameter("id");
		Integer intId = Integer.parseInt(id);
		
		Demandeur demandeur = sununetService.getDemandeur(intId);
		return demandeur;
	}
	
	private ModelAndView getResolvedView(String viewName, String objectKey, Object object) throws Exception {
		
		Map<String, Object> myModel = new HashMap<String, Object>();
		myModel.put(objectKey, object);
		return new ModelAndView(viewName, "model", myModel);		
		
	}
}
