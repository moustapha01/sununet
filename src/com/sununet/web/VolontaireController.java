package com.sununet.web;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
import com.sununet.dao.IVolontaireDao;
import com.sununet.domain.Volontaire;

public class VolontaireController implements Controller {

	private IVolontaireDao volontaireDao;
	
	
	public void setVolontaireDao(IVolontaireDao volontaireDao) {
		this.volontaireDao = volontaireDao;
	}


	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		Volontaire volontaire = new Volontaire();
		try{
			volontaireDao.addVolontaire(volontaire);
		}
		catch (Exception e) {
			ArrayList<String> erreurs = new ArrayList<String>();
			erreurs.add("Erreurs lors de l'obtention de tous les articles: " +
					e.getMessage());
			
			request.setAttribute("erreurs", erreurs);
			return new ModelAndView("erreurs");
		}
		
		request.setAttribute("message", "");
		return new ModelAndView("liste");
	}
}
