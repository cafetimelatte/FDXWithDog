package com.withdog.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.withdog.dto.CriteriaDto;
import com.withdog.dto.HotelDto;

public interface IHotelService {
	List<HotelDto> getHotelList();
	List<HotelDto> getHotelList(CriteriaDto cDto);
	HotelDto getHotelDetail(int h_id);
	int getHotelCount();
	void deleteHotel(int h_id);
	void deleteHotel(String path);
	void updateHotel(HotelDto dto);
	void deleteImage(int h_id, String type, String del_img);
	void updateImage(int h_id, String type, MultipartFile file);
	void insertHotel(HotelDto dto, MultipartFile[] filesI, MultipartFile[] filesD);
	int getHotelCount(String field, String category);
}
