package com.withdog.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.withdog.dao.IBookingDao;
import com.withdog.dto.BookingDto;
import com.withdog.dto.CriteriaDto;
import com.withdog.dto.HotelDto;
import com.withdog.dto.MemberDto;

@Service
public class BookingService implements IBookingService {
	@Autowired
	IBookingDao dao;
	
	@Override
	public HotelDto getHotelInfo(int h_id) {
		return dao.getHotelInfo(h_id);
	}

	@Override
	public void addBooking(BookingDto dto) {
		char[] charArray = new char[10];	
		for (int i = 0; i < charArray.length; i++) {
			charArray[i] = (char)((int)((Math.random() * 26) + 65));
		}
		dto.setB_id(new String(charArray));
		dao.addBooking(dto);
	}

	@Override
	public List<BookingDto> getBookingList(String m_id) {
		return dao.getBookingList(m_id);
	}

	@Override
	public BookingDto getBookingInfo(String b_id) {
		return dao.getBookingInfo(b_id);
	}

	@Override
	public void updateBooking(BookingDto dto) {
		dao.updateBooking(dto);
	}

	@Override
	public void deleteBooking(String b_id) {
		dao.deleteBooking(b_id);
	}

	@Override
	public int getBookingCount(String field, String category) {
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("field", field);
		map.put("category", category);
		return dao.getBookingCount(map);
	}

	@Override
	public List<BookingDto> getBookingListM(CriteriaDto cDto) {
		return dao.getBookingListM(cDto);
	}

	@Override
	public MemberDto getMemberInfo(String m_id) {
		return dao.getMemberInfo(m_id);
	}
	
	public int getBookingcnt(String userEmail) {
		return dao.getBookingcnt(userEmail);
	}
	
	@Override
	public void completeBooking(String[] b_id) {
		for (int i = 0; i < b_id.length; i++) {
			dao.completeBooking(b_id[i]);
		}
	}
}

