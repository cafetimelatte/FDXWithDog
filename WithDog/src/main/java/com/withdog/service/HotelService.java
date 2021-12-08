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
	public void updateHotel(HotelDto dto, MultipartFile[] filesI, MultipartFile[] filesD, String[] del_filesI, String[] del_filesD) {
		//del_img, del_detail에 값이 있을 경우 각각 타입으로 deleteImage를 수행한다
		//filesI, filesD에 파일이 있을 경우 각각 타입으로 insertImage를 수행한다
		//변경된 내용들을 h_img, h_detail에 ,로 묶어 넣고 dto에 입력한다
		if(del_filesI.length != 0) {
			for (int i = 0; i < del_filesI.length; i++) {
				deleteImage(dto.getH_id(), "h_img", del_filesI[i]);
			}
		}
		if(del_filesD.length != 0) {
			for (int i = 0; i < del_filesD.length; i++) {
				deleteImage(dto.getH_id(), "h_detail", del_filesD[i]);
			}
		}
		if(filesI.length != 0) {
			for (int i = 0; i < filesI.length; i++) {
				updateImage(dto.getH_id(), "h_img", filesI);
			}
		}
		if(filesD.length != 0) {
			for (int i = 0; i < filesD.length; i++) {
				updateImage(dto.getH_id(), "h_detail", filesD);
			}
		}
		dao.updateHotel(dto);
	}

	@Override
	public void deleteImage(int h_id, String type, String del_img) {
		String path = "D:/git/FDXWithDog/WithDog/src/main/webapp/resources/upload/hotel/" + h_id + "/" + type + "/";
		File dir = new File(path);
		File[] fileList = dir.listFiles();
		for (int i = 0; i < fileList.length; i++) {
			if(fileList[i].getName().equals(del_img)) {
				fileList[i].delete();
				break;
			}
		}
		dao.updateImage(input(h_id,rename(path,dir.listFiles()),type));
	}

	@Override
	public void updateImage(int h_id, String type, MultipartFile[] files) {
		String uploadPath = "D:/git/FDXWithDog/WithDog/src/main/webapp/resources/upload/hotel/" + h_id + "/"+ type + "/";
		upload(files, uploadPath);
		File dir = new File(uploadPath);
		File[] fileList = dir.listFiles();
		dao.updateImage(input(h_id,rename(uploadPath,fileList),type));
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
				files[i].transferTo(new File(path,files[i].getOriginalFilename()));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	public HashMap<String,Object> input(int h_id, String input, String type){
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("h_id", h_id);
		map.put("dbIn", input);
		if(type.equals("h_img")) {
			map.put("h_img", type);
		} else if(type.equals("h_detail")){
			map.put("h_detail", type);
		}
		return map;
	}

}

