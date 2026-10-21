package com.stadiumseat.ctl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.stadiumseat.dto.BookingDTO;
import com.stadiumseat.dto.StadiumDTO;
import com.stadiumseat.dto.UserDTO;
import com.stadiumseat.exception.RecordNotFoundException;
import com.stadiumseat.form.BookingForm;
import com.stadiumseat.service.BookingService;
import com.stadiumseat.service.StadiumService;
import com.stadiumseat.service.UserService;



@Controller
public class BookingCtl {
	
	@Autowired
	public BookingService service;

	@Autowired
	public StadiumService stadiumService;
	
	@Autowired
	public UserService userService;
	
	@GetMapping("/booking")
	public String BookingPage(@ModelAttribute("form")BookingForm form, @RequestParam("id") long id, Model model, HttpSession session) {
		
		UserDTO user = (UserDTO)session.getAttribute("user");
        StadiumDTO stadium = stadiumService.findStadiumById(id);
        model.addAttribute("user", user);
        model.addAttribute("stadium", stadium);
		
		return "booking";
	}
	
	@PostMapping("/addBooking")
	public String Add(@Valid @ModelAttribute("form")BookingForm form,  BindingResult bindingResult, Model model, HttpSession session) {

		System.out.println("form: "+form);
		try {
		if (bindingResult.hasErrors()) {
			System.out.println("bindingResult : "+bindingResult);
			return "booking";
		}else {
			UserDTO user = (UserDTO)session.getAttribute("user");
			BookingDTO bean = form.getDTO();
			System.out.println("From Date: "+bean);
			bean.setId(0);
			StadiumDTO stadium = stadiumService.findStadiumById(bean.getStadium_id());	
			long totalPrice = stadium.getTicketPrice()*bean.getNumberOfTicket();
			bean.setTotalPrice(totalPrice);
			bean.setStadium_id(stadium.getId());
			bean.setUser_id(user.getId());
			service.Add(bean);
			model.addAttribute("success", "Booking Aded successfully");
			model.addAttribute("totalPrice", totalPrice);
			
			stadium.setNumberOfSeat(stadium.getNumberOfSeat()-bean.getNumberOfTicket());
			stadiumService.update(stadium);
			return "redirect:/payment";
		}}catch (RecordNotFoundException e) {
			// TODO: handle exception
			model.addAttribute("error", e.getMessage());
			e.printStackTrace();
			return "booking";
		}
	}
	
	@GetMapping("/bookingList")
	public String list(@ModelAttribute("form")BookingForm form, Model model, HttpSession session){
		List<BookingDTO> list = null;
	UserDTO user = (UserDTO)session.getAttribute("user");
	if(user.getUserRole()==null) {
		return "login";
	}else 
	if(user.getUserRole().equals("User")) {
		list = service.list(user.getEmail());
	}else {
		list = service.list();
	}
	
	model.addAttribute("list", list);
	
	return "bookinglist";
		
	}
	
	@GetMapping("/bookingEdit")	
	public String update(@ModelAttribute("form")BookingForm form, Model model, @RequestParam("id") long id ){
		BookingDTO bean = service.findBookingById(id);
		form.populate(bean);
		model.addAttribute("bean",bean);	
		return "booking";
	}
	
	@GetMapping("/bookingDelete")	
	public String delete(@ModelAttribute("form")BookingForm form, Model model, @RequestParam("id") long id ) throws Exception{
		service.delete(id);			
		List<BookingDTO> list =	service.list();
		model.addAttribute("list", list);
		model.addAttribute("success", "Booking Deleted successfully");
		return "bookinglist";
	}
	
	
	@GetMapping("/cancel")	
	public String cancel(@ModelAttribute("form")BookingForm form, Model model, @RequestParam("id") long id ) throws Exception{
		BookingDTO dto = service.findBookingById(id);
		dto.setStatus("Canceled");
		service.update(dto);
		
		return "redirect:/bookingList";
	}

	


}
