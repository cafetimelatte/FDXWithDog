package com.withdog.dao;

import java.util.HashMap;
import java.util.List;

import com.withdog.dto.CriteriaDto;
import com.withdog.dto.HotelDto;

public interface IHotelDao {
	HotelDto getHotelDetail(int h_id);
	void deleteHotel(int h_id);
	void updateHotel(HotelDto dto);
	void insertHotel(HotelDto dto);
	int selectNextVal();
	List<HotelDto> getHotelList(CriteriaDto cDto);
	int getHotelCount(HashMap<String, Object> map);
	
}
