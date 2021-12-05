package com.withdog.service;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import com.withdog.dao.IHotelDao;
import com.withdog.dto.CriteriaDto;
import com.withdog.dto.HotelDto;

@Service
public class HotelService implements IHotelService {
	@Autowired
	IHotelDao dao;
	
	@Override
	public List<HotelDto> getHotelList() {
		return dao.getHotelList();
	}

	@Override
	public HotelDto getHotelDetail(int h_id) {
		return dao.getHotelDetail(h_id);
	}

	@Override
	public int getHotelCount() {
		return dao.getHotelCount();
	}

	@Override
	public void deleteHotel(int h_id) {
		//파일 및 폴더 삭제
		String path = "D:/git/FDXWithDog/WithDog/src/main/webapp/resources/upload/hotel/" + h_id + "/";
		deleteHotel(path);
		dao.deleteHotel(h_id);
	}
	
	@Override
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
	public void updateHotel(HotelDto dto) {
		dao.updateHotel(dto);
	}

	@Override
	public void deleteImage(int h_id, String type, String del_img) {
		String path = "D:/git/FDXWithDog/WithDog/src/main/webapp/resources/upload/hotel/" + h_id + "/" + type + "/";
		File dir = new File(path);
		File[] fileList = dir.listFiles();
		String img = "";
		for (int i = 0; i < fileList.length; i++) {
			if(fileList[i].getName().equals(del_img)) {
				fileList[i].delete();
				break;
			}
		}
		fileList = dir.listFiles();
		for (int i = 0; i < fileList.length; i++) {
			File renameFile = new File(path, (i+1)+fileList[i].getName().substring(fileList[i].getName().lastIndexOf(".")));
			fileList[i].renameTo(renameFile);
			if(img.equals("")) {
				img += renameFile.getName();
			} else {
				img += "," + renameFile.getName();
			}
		}
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("h_id", h_id);
		map.put("img", img);			
		if(type.equals("h_img")) {
			map.put("h_img", type);
		} else if(type.equals("h_detail")){
			map.put("h_detail", type);
		}
		dao.updateImage(map);
	}

	@Override
	public void updateImage(int h_id, String type, MultipartFile[] files) {
		String uploadPath = "D:/git/FDXWithDog/WithDog/src/main/webapp/resources/upload/hotel/" + h_id + "/"+ type + "/";
        File dir = new File(uploadPath);
		File[] fileList = dir.listFiles();
		String img = "";

		for (int i = 0; i < files.length; i++) {
			String saveName = "" + (fileList.length + i + 1);
			File saveFile = new File(uploadPath, saveName);
			try {
				files[i].transferTo(saveFile);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		fileList = dir.listFiles();
		for (int i = 0; i < fileList.length; i++) {
			File renameFile = new File(uploadPath, (i+1)+fileList[i].getName().substring(fileList[i].getName().lastIndexOf(".")));
			fileList[i].renameTo(renameFile);
			if(img.equals("")) {
				img += renameFile.getName();
			} else {
				img += "," + renameFile.getName();
			}
		}
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("h_id", h_id);
		map.put("img", img);
		if(type.equals("h_img")) {
			map.put("h_img", type);
		} else if(type.equals("h_detail")){
			map.put("h_detail", type);
		}
		dao.updateImage(map);
        
	}

	@Override
	public void insertHotel(HotelDto dto, MultipartFile[] filesI, MultipartFile[] filesD) {
		//h_id nextval 가져오기
		int nextVal = dao.selectNextVal();
		HashMap<Integer,String> map = new HashMap<Integer,String>();
		HashMap<Integer,MultipartFile[]> files = new HashMap<Integer,MultipartFile[]>();
		HashMap<Integer,String> img = new HashMap<Integer,String>();
		map.put(0, "/h_img/");
		map.put(1, "/h_detail/");
		String type1 = "h_img";
		String type2 = "h_detail";
		files.put(0, filesI);
		files.put(1, filesD);
		img.put(0, "");
		img.put(1, "");
		//nextVal값으로 폴더 생성, 파일 저장, 파일 경로 가져오기
		for (int i = 0; i < map.size(); i++) {
			String path = "D:/git/FDXWithDog/WithDog/src/main/webapp/resources/upload/hotel/" + nextVal + map.get(i);
			File file = new File(path);
			file.mkdirs();
			for (int j = 0; j < files.get(i).length; j++) {
				try {
					files.get(i)[j].transferTo(new File(path,files.get(i)[j].getOriginalFilename()));
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			File[] fileList = file.listFiles();
			for (int j = 0; j < fileList.length; j++) {
				File renameFile = new File(path, (j+1)+fileList[j].getName().substring(fileList[j].getName().lastIndexOf(".")));
				fileList[j].renameTo(renameFile);
				if(img.get(i).equals("")) {
					img.put(i, renameFile.getName());
				} else {
					img.put(i, img.get(i) + "," + renameFile.getName());
				}
			}
		}
		dto.setH_id(nextVal);
		dto.setH_img(img.get(0));
		dto.setH_detail(img.get(1));
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
	
	public String fileUp(int h_id, String type, MultipartFile[] files) {
		
		
		return null;
	}

}

