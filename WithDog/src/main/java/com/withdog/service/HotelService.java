package com.withdog.service;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.withdog.dao.IHotelDao;
import com.withdog.dto.CriteriaDto;
import com.withdog.dto.HotelDto;
import com.withdog.dto.boardDTO;

@Service
public class HotelService implements IHotelService {
	@Autowired
	IHotelDao dao;

	@Override
	public HotelDto getHotelDetail(int h_id) {
		return dao.getHotelDetail(h_id);
	}

	@Override
	public void deleteHotel(int h_id) {
		String path = "D:/git/FDXWithDog/WithDog/src/main/webapp/resources/upload/hotel/" + h_id + "/";
		deleteHotel(path);
		dao.deleteHotel(h_id);
	}

	public void deleteHotel(String path) {
		File folder = new File(path);
		while(folder.exists()) {
			File[] fileList = folder.listFiles();
			for (int i = 0; i < fileList.length; i++) {
				if(fileList[i].isFile()) {
					fileList[i].delete();
				} else{
					deleteHotel(fileList[i].getPath());
				}
				fileList[i].delete();
			}
			folder.delete();
		}
	}
	
	@Override
	public void updateHotel(HotelDto dto, MultipartFile[] files, String[] del_files, String type) {
		String path = "D:/git/FDXWithDog/WithDog/src/main/webapp/resources/upload/hotel/" + dto.getH_id() + "/" + type + "/";
		if(type.equals("h_img")) {
			dto.setH_img(deleteImage(dto.getH_id(), path, del_files));
			if(!files[0].getOriginalFilename().equals("")) {
				dto.setH_img(updateImage(dto.getH_id(), path, files));
			}
		} else if(type.equals("h_detail")) {
			dto.setH_detail(deleteImage(dto.getH_id(), path, del_files));
			if(!files[0].getOriginalFilename().equals("")) {
				dto.setH_detail(updateImage(dto.getH_id(), path, files));
			}
		}
		dao.updateHotel(dto);
		
	}

	public String deleteImage(int h_id, String path, String[] del_img) {
		File dir = new File(path);
		File[] fileList = dir.listFiles();
		for (int i = 0; i < fileList.length; i++) {
			for (int j = 0; j < del_img.length; j++) {
				if(fileList[i].getName().equals(del_img[j])) {
					fileList[i].delete();
					break;
				}
			}
		}
		return rename(path,dir.listFiles());
	}

	public String updateImage(int h_id, String uploadPath, MultipartFile[] files) {
		upload(files, uploadPath);
		File dir = new File(uploadPath);
		File[] fileList = dir.listFiles();
		return rename(uploadPath,fileList);
	}

	@Override
	public void insertHotel(HotelDto dto, MultipartFile[] filesI, MultipartFile[] filesD) {
		//h_id nextval 가져오기
		int nextVal = dao.selectNextVal();
		String[] types = new String[]{"/h_img/","/h_detail/"};
		String[] dbIns = new String[]{"",""};
		HashMap<Integer,MultipartFile[]> files = new HashMap<Integer,MultipartFile[]>();
		files.put(0, filesI);
		files.put(1, filesD);
		//nextVal값으로 폴더 생성, 파일 저장, 파일 경로 가져오기
		for (int i = 0; i < types.length; i++) {
			String path = "D:/git/FDXWithDog/WithDog/src/main/webapp/resources/upload/hotel/" + nextVal + types[i];
			File file = new File(path);
			file.mkdirs();
			upload(files.get(i),path);
			File[] fileList = file.listFiles();
			dbIns[i] = rename(path,fileList);
		}
		dto.setH_id(nextVal);
		dto.setH_img(dbIns[0]);
		dto.setH_detail(dbIns[1]);
		dao.insertHotel(dto);
	}

	@Override
	public List<HotelDto> getHotelList(CriteriaDto cDto) {
		return dao.getHotelList(cDto);
	}

	@Override
	public int getHotelCount(String field, String category) {
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("field", field);
		map.put("category", category);
		return dao.getHotelCount(map);
	}
	
	public String rename(String path, File[] fileList) {
		String dbIn = "";
		for (int i = 0; i < fileList.length; i++) {
			File renameFile = new File(path, (i+1)+fileList[i].getName().substring(fileList[i].getName().lastIndexOf(".")));
			fileList[i].renameTo(renameFile);
			if(dbIn.equals("")) {
				dbIn += renameFile.getName();
			} else {
				dbIn += "," + renameFile.getName();
			}
		}
		return dbIn;
	}
	
	public void upload(MultipartFile[] files, String path) {
		for (int i = 0; i < files.length; i++) {
			try {
				files[i].transferTo(new File(path,"temp" + files[i].getOriginalFilename()));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public List<boardDTO> getHotelReview(int h_id) {
		return dao.getHotelReview(h_id);
	}

	@Override
	public List<HotelDto> getRecentHotel() {
		return dao.getRecentHotel();
	}
}

