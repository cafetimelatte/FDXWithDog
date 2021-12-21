package com.withdog.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.withdog.dto.BookingDto;
import com.withdog.dto.CriteriaDto;
import com.withdog.service.IBookingService;


@Controller
public class BookingController {
	
	@Autowired
	IBookingService bookingService;
	
	@RequestMapping(value="/booking", method=RequestMethod.GET)
	public String booking(int h_id, HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String m_id = (String)session.getAttribute("loginEmail");
		model.addAttribute("m_info", bookingService.getMemberInfo(m_id));
		model.addAttribute("h_booking",bookingService.getHotelInfo(h_id));
		return "booking/bookingAdd";
	}
	
	@RequestMapping(value="/booking", method=RequestMethod.POST)
	public String booking(BookingDto dto, Model model) {
		bookingService.addBooking(dto);
		return "redirect:/bookingList";
	}
	
	@RequestMapping("/bookingList")
	public String bookingList(HttpServletRequest request, Model model) throws IOException {
		HttpSession session = request.getSession();
		String m_id = (String)session.getAttribute("loginEmail");
		model.addAttribute("b_info",bookingService.getBookingList(m_id));
		return "booking/bookingList";
	}
	
	@RequestMapping(value="/updateBooking", method=RequestMethod.GET)
	public String bookingUpdate(String b_id, @RequestParam(value="h_id", required=false, defaultValue="0") int h_id, Model model) {
		model.addAttribute("b_info",bookingService.getBookingInfo(b_id));
		if(h_id != 0) {
			model.addAttribute("h_booking",bookingService.getHotelInfo(h_id));
		}
		return "booking/bookingUpdate";
	}
	
	@RequestMapping(value="/updateBooking", method=RequestMethod.POST)
	public String bookingUpdate(BookingDto dto, Model model) {
		bookingService.updateBooking(dto);
		return "redirect:/bookingList";
	}
	
	@RequestMapping(value="/deleteBooking", method=RequestMethod.GET)
	public String bookingDelete(String b_id, Model model) {
		bookingService.deleteBooking(b_id);
		return "redirect:/bookingList";
	}
	
	@RequestMapping(value="/bookingListM", method=RequestMethod.GET)
	public String bookingListM(Model model) {
		return "booking/managerBookingList";
	}

	@RequestMapping(value="/bookingListM", method=RequestMethod.POST)
	public @ResponseBody Map<String, Object> bookingListM(@RequestBody CriteriaDto datas) {
		CriteriaDto cDto = new CriteriaDto(datas.getPage(),6,bookingService.getBookingCount(datas.getField(),datas.getCategory()), datas.getField(),datas.getCategory(), datas.getOrder());
		Map<String, Object> map = new HashMap<String, Object>(){{put("b_info",bookingService.getBookingListM(cDto));put("crit",cDto);}};
		return map;
	}
	
	@RequestMapping(value="/updateBookingM", method=RequestMethod.GET)
	public String bookingUpdateM(String b_id, @RequestParam(value="h_id", required=false, defaultValue="0") int h_id, Model model) {
		model.addAttribute("b_info",bookingService.getBookingInfo(b_id));
		if(h_id != 0) {
			model.addAttribute("h_booking",bookingService.getHotelInfo(h_id));
		}
		return "booking/managerBookingUpdate";
	}
	
	@RequestMapping(value="/updateBookingM", method=RequestMethod.POST)
	public String bookingUpdateM(BookingDto dto, Model model) {
		bookingService.updateBooking(dto);
		return "redirect:/bookingListM";
	}

	@RequestMapping(value="/deleteBookingM", method=RequestMethod.GET)
	public String bookingDeleteM(String b_id, Model model) {
		bookingService.deleteBooking(b_id);
		return "redirect:/bookingListM";
	}
	
	@RequestMapping(value="/pay", method=RequestMethod.POST)
	public void pay(String[] b_id, HttpServletResponse response, Model model) throws IOException {
		bookingService.completeBooking(b_id);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>alert('예약이 완료되었습니다.');location.href='hotelList';</script>");
		out.flush();
	}
	
}
