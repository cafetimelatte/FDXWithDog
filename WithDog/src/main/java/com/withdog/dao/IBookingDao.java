package com.withdog.dao;

import java.util.HashMap;
import java.util.List;

import com.withdog.dto.BookingDto;
import com.withdog.dto.CriteriaDto;
import com.withdog.dto.HotelDto;

public interface IBookingDao {
	
	HotelDto getHotelInfo(int h_id);
	void addBooking(BookingDto dto);
	BookingDto getBookingInfo(String b_id);
	void updateBooking(BookingDto dto);
	void deleteBooking(String b_id);
	int getBookingCount(HashMap<String, Object> map);
	List<BookingDto> getBookingListM(CriteriaDto cDto);
	List<BookingDto> getBookingList(String m_id);
	
}
