package com.withdog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.withdog.dto.CriteriaDto;
import com.withdog.dto.HotelDto;
import com.withdog.service.IHotelService;

@Controller
public class HotelController {
	
	@Autowired
	IHotelService hotelService;
	
	@RequestMapping("/hotelList")
	public String hotelList(@RequestParam(value="p", required=false, defaultValue="1") int page,
			@RequestParam(value="f", required=false, defaultValue="") String field,
			@RequestParam(value="c", required=false, defaultValue="h_name") String category,
			@RequestParam(value="o", required=false, defaultValue="recent") String order,
			Model model) {
		CriteriaDto cDto = new CriteriaDto(page,6,hotelService.getHotelCount(field, category), field, category, order);
		model.addAttribute("h_list",hotelService.getHotelList(cDto));
		model.addAttribute("h_crit",cDto);
		return "hotel/hotelList";
	}
	
	@RequestMapping("/hotelDetail")
	public String detailInfo(int h_id, Model model) {
		model.addAttribute("h_detail",hotelService.getHotelDetail(h_id));
		return "hotel/hotelDetail";
	}
	
	@RequestMapping(value="/hotelListM", method=RequestMethod.GET)
	public String hotelListM(@RequestParam(value="p", required=false, defaultValue="1") int page,
			@RequestParam(value="f", required=false, defaultValue="") String field,
			@RequestParam(value="c", required=false, defaultValue="h_name") String category,
			@RequestParam(value="o", required=false, defaultValue="recent") String order,
			Model model) {
		CriteriaDto cDto = new CriteriaDto(page,6,hotelService.getHotelCount(field, category), field, category, order);
		model.addAttribute("h_list",hotelService.getHotelList(cDto));
		model.addAttribute("h_crit",cDto);
		return "hotel/managerHotelList";	
	}
	
	@RequestMapping(value="/hotelListM", method=RequestMethod.POST)
	public String hotelListM(String field, String category, Model model) {
		CriteriaDto cDto = new CriteriaDto(1,6,hotelService.getHotelCount(field, category), field, category, "recent");
		model.addAttribute("h_list",hotelService.getHotelList(cDto));
		model.addAttribute("h_crit",cDto);
		return "hotel/managerHotelList";
	}
	
	@RequestMapping(value="/updateHotelM", method=RequestMethod.GET)
	public String hotelUpdateM(int h_id, Model model) {
		model.addAttribute("h_detail",hotelService.getHotelDetail(h_id));
		return "hotel/managerHotelUpdate";
	}
	
	@RequestMapping(value="/updateHotelM", method=RequestMethod.POST)
	public String hotelUpdateM(HotelDto dto, @RequestParam MultipartFile[] filesI,
			@RequestParam MultipartFile[] filesD,
			@RequestParam(value="del_filesI", required=false, defaultValue="") String[] del_filesI,
			@RequestParam(value="del_filesD", required=false, defaultValue="") String[] del_filesD,
			Model model) {
		for (int i = 0; i < del_filesI.length; i++) {
			System.out.println("del_filesI["+i+"] : " + del_filesI[i]);
		}
		for (int i = 0; i < del_filesD.length; i++) {
			System.out.println("del_filesD["+i+"] : " + del_filesD[i]);
		}
		for (int i = 0; i < filesI.length; i++) {
			System.out.println("filesI["+i+"] : " + filesI[i].getOriginalFilename());
		}
		for (int i = 0; i < filesD.length; i++) {
			System.out.println("filesD["+i+"] : " + filesD[i].getOriginalFilename());
		}
		System.out.println("--------------------------------------");
		hotelService.updateHotel(dto);
		return "redirect:/hotelListM";
	}

	@RequestMapping(value="/updateImg", method=RequestMethod.GET)
	public String deleteImg(int h_id, String type, String del_img, Model model) {
		hotelService.deleteImage(h_id, type, del_img);
		return "redirect:/updateHotelM?h_id="+h_id;
	}
	
	@RequestMapping(value="/updateImg", method=RequestMethod.POST)
	public String updateImg(@RequestParam(value="dir", required=false, defaultValue="/") String dir,
			@RequestParam MultipartFile[] files, String type, int h_id, Model model) {
			hotelService.updateImage(h_id, type, files);
		return "redirect:/updateHotelM?h_id="+h_id;
	}
	
	@RequestMapping(value="/deleteHotelM", method=RequestMethod.GET)
	public String hotelDeleteM(int h_id, Model model) {
		hotelService.deleteHotel(h_id);
		return "redirect:/hotelListM";
	}
	
	@RequestMapping(value="/addHotelM", method=RequestMethod.GET)
	public String hotelInsertM() {
		return "hotel/managerHotelAdd";
	}
	
	@RequestMapping(value="/addHotelM", method=RequestMethod.POST)
	public String hotelInsertM(HotelDto dto, @RequestParam MultipartFile[] filesI, @RequestParam MultipartFile[] filesD, Model model) {
		hotelService.insertHotel(dto, filesI, filesD);
		return "redirect:/hotelListM";
	}
	
	@RequestMapping(value="/applyHotel", method=RequestMethod.GET)
	public String hotelApply(String m_id, Model model) {
		return "hotel/hotelApply";
	}
	
	@RequestMapping(value="/applyHotel", method=RequestMethod.POST)
	public String hotelApply(Model model) {
		return "redirect:/hotelList";
	}
	
	
}
