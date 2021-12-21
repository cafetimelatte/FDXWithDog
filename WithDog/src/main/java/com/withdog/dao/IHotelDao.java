package com.withdog.dao;

import java.util.HashMap;
import java.util.List;

import com.withdog.dto.ApplyDto;
import com.withdog.dto.CriteriaDto;
import com.withdog.dto.HotelDto;
import com.withdog.dto.boardDTO;

public interface IHotelDao {
	HotelDto getHotelDetail(int h_id);
	void deleteHotel(int h_id);
	void updateHotel(HotelDto dto);
	void insertHotel(HotelDto dto);
	int selectNextVal();
	List<HotelDto> getHotelList(CriteriaDto cDto);
	int getHotelCount(HashMap<String, Object> map);
	List<boardDTO> getHotelReview(int h_id);
	List<HotelDto> getRecentHotel();
	void insertApply(HashMap<String, Object> map);
	List<ApplyDto> getApplyList();
	void updateApply(ApplyDto dto);
	
}
