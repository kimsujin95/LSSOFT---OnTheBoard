package com.otb.sevice;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.otb.dao.AdminDao;
import com.otb.vo.AdminReservationVo;
import com.otb.vo.OwnedGameVo;
import com.otb.vo.ReservationDateVo;
import com.otb.vo.ReservationTimeVo;
import com.otb.vo.StoreImageVo;
import com.otb.vo.StoreVo;

@Service
public class AdminService {

	@Autowired AdminDao adminDao;
	
	//매장 정보 호출
	public StoreVo getStore(int userNo) {
		
		System.out.println("서비스 - 매장 확인");
		System.out.println(userNo);
		
		StoreVo storeVo = adminDao.selectStore(userNo);
		
		return storeVo;
		
	}
	
	// 매장 등록
	public void registerStoreInfo(StoreVo storeVo) {
		System.out.println("서비스 - 인서트 스토어 인포");
		System.out.println(storeVo.toString());
		
		adminDao.insertStoreInfo(storeVo);
	}
	
	// 매장 정보 수정
	public void modifyStoreInfo(StoreVo storeVo) {
		System.out.println("서비스 - 업데이트 스토어 인포");
		System.out.println(storeVo.toString());
		
		adminDao.updateStoreInfo(storeVo);
	}
	
	//매장 이미지 전체 호출
	public List<StoreImageVo> getStoreImageList(int storeNo) {
		List<StoreImageVo> storeImageList = adminDao.selectImageList(storeNo);
		
		System.out.println("이미지 호출 완료");
		
//		for(StoreImageVo storeImage : storeImageList) {
//			System.out.println(storeImage.toString());
//		}
		
		return storeImageList;
	}
	
	//매장 이미지 등록
	public List<StoreImageVo> restoreImages(List<MultipartFile> fileList, int storeNo) {
		
		System.out.println("서비스 도착");
		
		//저장 폴더 경로
		String saveDirectory = "C:\\JavaStudy\\otb\\src\\img\\store";
		
		//돌려보낼 추가된 이미지 리스트
		List<StoreImageVo> addedStoreImageList = new ArrayList<StoreImageVo>();
		
		//이미지 저장
		for(MultipartFile image : fileList) {
			//이미지의 원래 이름
			String oriName = image.getOriginalFilename();
			
			//이미지의 확장자 명 구하기
			int indexNum = oriName.lastIndexOf(".");
			String exName = oriName.substring(indexNum);
			
			//이미지의 저장용 이름
			String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
			
			//저장 경로
			String storePathImage = saveDirectory +"\\"+ saveName;
			
			StoreImageVo storeImage = new StoreImageVo(storeNo, saveName);
			System.out.println(storeImage.toString());

			try {
				//파일 정보를 하드 디스크에 저장
				byte[] fileData = image.getBytes();
				
				OutputStream out = new FileOutputStream(storePathImage);
				BufferedOutputStream bf = new BufferedOutputStream(out);
				
				bf.write(fileData);
				bf.close();
				
				//파일 정보를 db에 저장
				adminDao.insertStoreImage(storeImage);
				
				int storeImageNo = storeImage.getStoreImageNo();
				System.out.println("매장 이미지 번호 " + storeImageNo);
				
				//추가된 이미지 호출
				StoreImageVo addedStoreImage = adminDao.selectOneStoreImage(storeImageNo);
				addedStoreImageList.add(addedStoreImage);
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		return addedStoreImageList;
		
	}	
	
	//매장 이미지 삭제
	public boolean removeImage(StoreImageVo storeImage) {
		int removeCheck = adminDao.deleteStoreImage(storeImage);
		System.out.println(removeCheck);
		
		if(removeCheck == 1) {
			return true;
		} else {
			return false;
		}
	}

	//매장 스케쥴 등록
	public void addSchedule(String date, String[] times, ReservationDateVo reservationDateVo) {
//		System.out.println("스케쥴 서비스 도착");
		String[] days = date.split(",");
		for(int i = 0; i < days.length; i ++) {
			System.out.println(days[i]);
			reservationDateVo.setStoreReservationDate(days[i]);
			
			//날짜 번호를 찾는다
			int dateNo = adminDao.selectDateNo(reservationDateVo);
			
			//해당하는 날짜 번호가 없을 경우
			if(dateNo == 0) {
				System.out.println("날짜 번호 없음");
				//날짜 번호 생성
				adminDao.insertDate(reservationDateVo);
				
				dateNo = reservationDateVo.getReservationDateNo();
				System.out.println("date 인서트 이후 dateNo 값 비교");
				
				//해당 날짜번호를 FK로 갖는 시간 데이터 생성
				System.out.println(dateNo);
				for(int j = 0; j < times.length; j ++) {
					ReservationTimeVo reservationTimeVo = new ReservationTimeVo();
					reservationTimeVo.setReservationDateNo(dateNo);
					reservationTimeVo.setStoreReservationTime(times[j]);
					
					System.out.println(reservationTimeVo.toString());
					
					adminDao.insertTime(reservationTimeVo);
				}
			} else {
				System.out.println("날짜 번호 있음");
				//날짜 번호가 이미 있을 경우, 해당하는 날짜 번호를 갖는 시간을 모두 삭제
				adminDao.deleteTime(dateNo);
				
				//이후 재등록
				for(int j = 0; j < times.length; j ++) {
					ReservationTimeVo reservationTimeVo = new ReservationTimeVo();
					reservationTimeVo.setReservationDateNo(dateNo);
					reservationTimeVo.setStoreReservationTime(times[j]);
					
					System.out.println(reservationTimeVo.toString());
					
					adminDao.insertTime(reservationTimeVo);
				} 
				
			}
			
		}
		
	}

	//매장 스케쥴 조회
	public Map<String, Object> lookupSchedule(ReservationDateVo reservationDateVo) {
		
		int dateNo = adminDao.selectDateNo(reservationDateVo);
		System.out.println("날짜 번호" + dateNo);
		
		Map<String, Object> reservationData = new HashMap<String, Object>();
		
		if(dateNo == 0) {
			System.out.println();
			return null;
		} else {
			String[] times = new String[14];
			List<String> timeList = adminDao.selectTimeList(dateNo);
			ReservationDateVo reservationPeoples = adminDao.selectReservationPeoples(dateNo);
			int storeReservationTotal = reservationPeoples.getStoreReservationTotal();
			int storeReservationMax = reservationPeoples.getStoreReservationMax();
			
			for(int i = 0; i < timeList.size(); i ++) {
				switch (timeList.get(i)) {
				case "09":
					times[0] = timeList.get(i);
					break;
				case "10":
					times[1] = timeList.get(i);
					break;
				case "11":
					times[2] = timeList.get(i);
					break;
				case "12":
					times[3] = timeList.get(i);
					break;
				case "13":
					times[4] = timeList.get(i);
					break;
				case "14":
					times[5] = timeList.get(i);
					break;
				case "15":
					times[6] = timeList.get(i);
					break;
				case "16":
					times[7] = timeList.get(i);
					break;
				case "17":
					times[8] = timeList.get(i);
					break;
				case "18":
					times[9] = timeList.get(i);
					break;
				case "19":
					times[10] = timeList.get(i);
					break;
				case "20":
					times[11] = timeList.get(i);
					break;
				case "21":
					times[12] = timeList.get(i);
					break;
				case "22":
					times[13] = timeList.get(i);
					break;

				default:
					break;
				}
			}
			reservationData.put("times", times);
			reservationData.put("storeReservationTotal", storeReservationTotal);
			reservationData.put("storeReservationMax", storeReservationMax);
		}
		return reservationData;
	}
	
	//매장 보유 게임 등록
	public void restoreOwnedGame(OwnedGameVo ownedGame) {
		System.out.println("서비스 도착");
		adminDao.insertOwnedGame(ownedGame);
	}

	//매장 보유 게임 삭제
	public void removeOwnedGame(OwnedGameVo ownedGame) {
		System.out.println("서비스 도착");
		adminDao.deleteOwnedGame(ownedGame);
	}
	
	//매장에 등록된 예약 호출
	public List<AdminReservationVo> getReservationList(Map<String, Object> searchKey) {
		
		List<AdminReservationVo> reservationList = adminDao.selectReservationList(searchKey);
		
		for(AdminReservationVo reservationVo : reservationList) {
			System.out.println(reservationVo.toString());
		}
		
		return reservationList;
		
	}
	
	//예약정보 하나 호출
	public AdminReservationVo getReservationVo(int reservationNo) {
		AdminReservationVo adminReservationVo = adminDao.selectReservation(reservationNo);
		return adminReservationVo;
	}
	
	//예약 수정
	public boolean modifyReservation (AdminReservationVo modifyReservation) {
		
		int updateCheck = adminDao.updateReservation(modifyReservation);
		System.out.println(updateCheck);
		if(updateCheck == 1) {
			return true;
		} else {
			return false;
		}
		
	}
	
}
