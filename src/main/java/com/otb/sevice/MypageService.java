package com.otb.sevice;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.otb.dao.MatchingDao;
import com.otb.dao.UserDao;
import com.otb.vo.MatchingVo;

@Service
public class MypageService {
	
	@Autowired
	private MatchingDao matchingDao;
	private UserDao userDao;
	
	public List<MatchingVo> list(int userNo) {
		
		System.out.println("[MypageService.list()]");
		
		List<MatchingVo> matchingList = matchingDao.mypageList(userNo);
		
		return matchingList;
	}
	
	public int modifyProfile(String userNickname, MultipartFile userPathProfile) {

		System.out.println("[mypageService.modifyProfile()]");

		Map<String, Object> profileMap = new HashMap<String, Object>();
		
		profileMap.put("userNickname", userNickname);
		profileMap.put("userPathProfile", userPathProfile);

		if (userPathProfile.getSize() == 0) {

			profileMap.put("userPathProfile", "");

			return userDao.updateProfile(profileMap);

		} else {

			String saveDir = "C:\\javaStudy\\upload";

			String exName = userPathProfile.getOriginalFilename().substring(userPathProfile.getOriginalFilename().lastIndexOf("."));
			String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;

			String filePath = saveDir + "\\" + saveName;

			try {
				byte[] fileData = userPathProfile.getBytes();

				OutputStream out = new FileOutputStream(filePath);
				BufferedOutputStream bout = new BufferedOutputStream(out);

				bout.write(fileData);
				bout.close();

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			profileMap.put("userPathProfile", saveName);

			return userDao.updateProfile(profileMap);

		}

	}

}
