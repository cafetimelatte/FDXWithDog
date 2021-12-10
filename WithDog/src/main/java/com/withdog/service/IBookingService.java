package com.withdog.service;

import java.util.List;

import com.withdog.dto.BookingDto;
import com.withdog.dto.CriteriaDto;
import com.withdog.dto.HotelDto;

public interface IBookingService {

	HotelDto getHotelInfo(int h_id);
//	MemberDto getMemberInfo(String m_id);
	void addBooking(BookingDto dto);
	List<BookingDto> getBookingList(String m_id);
	BookingDto getBookingInfo(String b_id);
	void updateBooking(BookingDto dto);
	void deleteBooking(String b_id);
	int getBookingCount(String field, String category);
	List<BookingDto> getBookingListM(CriteriaDto cDto);
	
}
