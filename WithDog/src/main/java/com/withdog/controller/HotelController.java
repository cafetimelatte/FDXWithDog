package com.withdog.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.withdog.dto.CriteriaDto;
import com.withdog.dto.HotelDto;
import com.withdog.service.IHotelService;

@Controller
public class HotelController {
	
	@Autowired
	IHotelService hotelService;
	
	@RequestMapping(value="/hotelList", method=RequestMethod.GET)
	public String hotelList(@RequestParam(value="f", required=false, defaultValue="") String h_field,
			Model model) {
		model.addAttribute("h_field",h_field);
		return "hotel/hotelList";
	}
	
	@RequestMapping(value="/hotelList", method=RequestMethod.POST)
	public @ResponseBody Map<String, Object> hotelList(@RequestBody CriteriaDto datas){
		CriteriaDto cDto = new CriteriaDto(datas.getPage(),6,hotelService.getHotelCount(datas.getField(),datas.getCategory()), datas.getField(),datas.getCategory(), datas.getOrder());
		Map<String, Object> map = new HashMap<String, Object>(){{put("h_list",hotelService.getHotelList(cDto));put("crit", cDto);}};
		return map;
	}
	
	@RequestMapping("/hotelDetail")
	public String detailInfo(int h_id, Model model) {
		model.addAttribute("h_detail",hotelService.getHotelDetail(h_id));
		return "hotel/hotelDetail";
	}
	
	@RequestMapping(value="/hotelListM", method=RequestMethod.GET)
	public String hotelListM(Model model) {
		return "hotel/managerHotelList";	
	}

	@RequestMapping(value="/hotelListM", method=RequestMethod.POST)
	public @ResponseBody Map<String, Object> hotelListM(@RequestBody CriteriaDto datas) {
		CriteriaDto cDto = new CriteriaDto(datas.getPage(),6,hotelService.getHotelCount(datas.getField(),datas.getCategory()), datas.getField(),datas.getCategory(), datas.getOrder());
		Map<String, Object> map = new HashMap<String, Object>(){{put("h_list",hotelService.getHotelList(cDto));put("crit", cDto);}};
		return map;	
	}
	
	@RequestMapping(value="/updateHotelM", method=RequestMethod.GET)
	public String hotelUpdateM(int h_id, Model model) {
		model.addAttribute("h_detail",hotelService.getHotelDetail(h_id));
		return "hotel/managerHotelUpdate";
	}
	
	@RequestMapping(value="/updateHotelM", method=RequestMethod.POST)
	public String hotelUpdateM(HotelDto dto,
			@RequestParam MultipartFile[] filesI,
			@RequestParam MultipartFile[] filesD,
			@RequestParam(value="del_filesI", required=false, defaultValue="") String[] del_filesI,
			@RequestParam(value="del_filesD", required=false, defaultValue="") String[] del_filesD,
			Model model) {
		hotelService.updateHotel(dto, filesI, del_filesI, "h_img");
		hotelService.updateHotel(dto, filesD, del_filesD, "h_detail");
		return "redirect:/hotelListM";
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
