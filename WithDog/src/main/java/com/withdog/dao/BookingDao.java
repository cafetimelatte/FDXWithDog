package com.withdog.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.withdog.dto.BookingDto;
import com.withdog.dto.CriteriaDto;
import com.withdog.dto.HotelDto;
import com.withdog.dto.MemberDto;

@Repository
public class BookingDao implements IBookingDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public HotelDto getHotelInfo(int h_id) {
		return sqlSession.selectOne("com.withdog.mapper.bookingMapper.getHotelInfo", h_id);
	}

	@Override
	public void addBooking(BookingDto dto) {
		sqlSession.update("com.withdog.mapper.bookingMapper.addBooking", dto);
	}

	@Override
	public List<BookingDto> getBookingList(String m_id) {
		return sqlSession.selectList("com.withdog.mapper.bookingMapper.getBookingList", m_id);
	}

	@Override
	public BookingDto getBookingInfo(String b_id) {
		return sqlSession.selectOne("com.withdog.mapper.bookingMapper.getBookingInfo", b_id);
	}

	@Override
	public void updateBooking(BookingDto dto) {
		sqlSession.update("com.withdog.mapper.bookingMapper.updateBookingInfo", dto);
	}

	@Override
	public void deleteBooking(String b_id) {
		sqlSession.delete("com.withdog.mapper.bookingMapper.deleteBookingInfo", b_id);
	}

	@Override
	public int getBookingCount(HashMap<String, Object> map) {
		return (int)sqlSession.selectOne("com.withdog.mapper.bookingMapper.getBookingCount", map);
	}

	@Override
	public List<BookingDto> getBookingListM(CriteriaDto cDto) {
		return sqlSession.selectList("com.withdog.mapper.bookingMapper.getBookingListM", cDto);
	}

	@Override
	public MemberDto getMemberInfo(String m_id) {
		return sqlSession.selectOne("com.withdog.mapper.bookingMapper.getMemberInfo", m_id);
	}

	@Override
<<<<<<< HEAD
	public int getBookingcnt(String userEmail) {
		return sqlSession.selectOne("com.withdog.mapper.bookingMapper.BookingCnt",userEmail);
=======
	public void completeBooking(String b_id) {
		sqlSession.update("com.withdog.mapper.bookingMapper.completeBooking", b_id);
>>>>>>> branch 'main' of https://github.com/cafetimelatte/FDXWithDog.git
	}

}
