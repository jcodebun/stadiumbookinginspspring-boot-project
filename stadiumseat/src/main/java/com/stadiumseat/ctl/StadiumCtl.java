package com.stadiumseat.ctl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.stadiumseat.dto.StadiumDTO;
import com.stadiumseat.exception.RecordNotFoundException;
import com.stadiumseat.form.StadiumForm;
import com.stadiumseat.service.StadiumService;



@Controller
public class StadiumCtl {

	@Autowired
	public StadiumService service;

	
	@GetMapping("/Stadium")
	public String StadiumPage(@ModelAttribute("form")StadiumForm form, Model model) {

		return "stadium";
	}
	
	@PostMapping("/AddStadium")
	public String Add(@Valid @ModelAttribute("form")StadiumForm form,  BindingResult bindingResult, Model model) {

		System.out.println("form: "+form);
		try {
		if (bindingResult.hasErrors()) {
			System.out.println("bindingResult : "+bindingResult);
			return "stadium";
		}else {
			StadiumDTO bean = form.getDTO();
			if(form.getId()>0) {
				
				service.update(bean);
				model.addAttribute("success", "Stadium Updated successfully");
			}else {
				
				service.Add(bean);
				model.addAttribute("success", "Stadium Aded successfully");
			}			
			return "stadium";
		}}catch (RecordNotFoundException e) {
			// TODO: handle exception
			model.addAttribute("error", e.getMessage());
			e.printStackTrace();
			return "stadium";
		}
	}
	
	@GetMapping("/stadiumList")
	public String list(@ModelAttribute("form")StadiumForm form, Model model){
	List<StadiumDTO> list = service.list();
	model.addAttribute("list", list);
	return "stadiumlist";
		
	}
	
	@GetMapping("/stadiumEdit")	
	public String update(@ModelAttribute("form")StadiumForm form, Model model, @RequestParam("id") long id ){
		StadiumDTO bean = service.findStadiumById(id);
		form.populate(bean);
		model.addAttribute("bean",bean);	
		return "stadium";
	}
	
	@GetMapping("/stadiumDelete")	
	public String delete(@ModelAttribute("form")StadiumForm form, Model model, @RequestParam("id") long id ) throws Exception{
		service.delete(id);			
		List<StadiumDTO> list =	service.list();
		model.addAttribute("list", list);
		model.addAttribute("success", "Stadium Deleted successfully");
		return "stadiumlist";
	}
	



}
