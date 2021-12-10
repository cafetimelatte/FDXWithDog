package com.withdog.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.withdog.dto.CriteriaDto;
import com.withdog.dto.HotelDto;

@Repository
public class HotelDao implements IHotelDao {

	@Autowired
	SqlSession sqlSession;

	@Override
	public HotelDto getHotelDetail(int h_id) {
		return sqlSession.selectOne("com.withdog.mapper.hotelMapper.getHotelDetail", h_id);
	}

	@Override
	public void deleteHotel(int h_ids) {
		sqlSession.delete("com.withdog.mapper.hotelMapper.deleteHotel",h_ids);
	}

	@Override
	public void updateHotel(HotelDto dto) {
		sqlSession.update("com.withdog.mapper.hotelMapper.updateHotel", dto);
	}

	@Override
	public void insertHotel(HotelDto dto) {
		sqlSession.insert("com.withdog.mapper.hotelMapper.insertHotel", dto);
	}

	@Override
	public int selectNextVal() {
		return (int)sqlSession.selectOne("com.withdog.mapper.hotelMapper.selectNextVal");
	}

	@Override
	public List<HotelDto> getHotelList(CriteriaDto cDto) {
		return sqlSession.selectList("com.withdog.mapper.hotelMapper.getHotelList",cDto);
	}

	@Override
	public int getHotelCount(HashMap<String, Object> map) {
		return (int)sqlSession.selectOne("com.withdog.mapper.hotelMapper.getHotelCount", map);
	}


}
