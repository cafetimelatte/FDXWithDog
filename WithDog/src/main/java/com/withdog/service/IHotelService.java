package com.withdog.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.withdog.dto.ApplyDto;
import com.withdog.dto.CriteriaDto;
import com.withdog.dto.HotelDto;
import com.withdog.dto.boardDTO;

public interface IHotelService {
	List<HotelDto> getHotelList(CriteriaDto cDto);
	HotelDto getHotelDetail(int h_id);
	void deleteHotel(int h_id);
	void insertHotel(HotelDto dto, MultipartFile[] filesI, MultipartFile[] filesD);
	int getHotelCount(String field, String category);
	void updateHotel(HotelDto dto, MultipartFile[] files, String[] del_files, String type);
	List<boardDTO> getHotelReview(int h_id);
	List<HotelDto> getRecentHotel();
	void insertApply(String m_id, HotelDto dto);
	List<ApplyDto> getApplyList();
	void updateApply(ApplyDto dto);
}
