package br.com.mazonit.site.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/")
public class SiteController {

	private static final String PAGE_TITLE = "pageTitle";
	
	@RequestMapping(method = RequestMethod.GET)
	public String home(Model model) {
		return "site/home";
	}

	@RequestMapping(value="/beneficios-erp", method = RequestMethod.GET)
	public String beneficiosErp(Model model) {
		model.addAttribute(PAGE_TITLE, "Benefícios ERP");
		return "site/erp";
	}
	
	@RequestMapping(value="/portifolio", method = RequestMethod.GET)
	public String portifolio(Model model) {
		return "site/portifolio";
	}

	@RequestMapping(value="/portifolio/projeto/{codigo}", method = RequestMethod.GET)
	public String projeto(Model model) {
	    return "site/projeto";
	}

	@RequestMapping(value="/equipe", method = RequestMethod.GET)
	public String equipe(Model model) {
	    return "site/equipe";
	}

	@RequestMapping(value="/contato", method = RequestMethod.GET)
	public String contato(Model model) {
		model.addAttribute(PAGE_TITLE, "CONTATO");
	    return "site/contato";
	}

	@RequestMapping(value="/portifolio/pessoal/{codigo}", method = RequestMethod.GET)
	public String portifolioPessaoal(Model model, @PathVariable("codigo") Long codigo) {
	    return "site/portifolioPessoal";
	}

}