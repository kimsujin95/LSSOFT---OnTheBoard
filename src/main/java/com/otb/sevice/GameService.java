package com.otb.sevice;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otb.dao.AdminDao;
import com.otb.dao.GameDao;
import com.otb.vo.GameVo;
import com.otb.vo.OwnedGameVo;
import com.otb.vo.StoreVo;
import com.otb.vo.ThemeVo;

@Service
public class GameService {

	@Autowired
	private AdminDao adminDao;
	@Autowired
	private GameDao gameDao;
	
	//테마 목록
	public List<ThemeVo> getThemeList() {
		List<ThemeVo> themeList = gameDao.selectThemeList();
		return themeList;
	}
	
	//게임목록
	public List<GameVo> gameList() {
		System.out.println("[GameService.gameList()]");
		
		List<GameVo> gameList = gameDao.gameList();
		
		System.out.println(gameList);
		
		return gameList;
	}
	
	//게임상세정보
	public GameVo gameDetails(int gameNo) {
		System.out.println("[GameService.gameRead()]");
		
		GameVo gameVo = gameDao.gameDetails(gameNo);
		
		System.out.println(gameVo);
		
		return gameVo;
	}
	
	//매장 등록용 게임 리스트
	public Map<String, Object> getStoreGameList(int storeNo, int crtPage) {
		System.out.println("매장 등록용 게임 리스트");
		System.out.println(crtPage);
		
		crtPage = (crtPage <= 0) ? 1 : crtPage;
		
		//리스트의 갯수 정하기
		int listCnt = 10;
		//시작 번호
		int startNum = ((crtPage - 1) * listCnt ) + 1;
		//끝 번호
		int endNum = crtPage * listCnt;
		
		Map<String, Object> pageMap = new HashMap<String, Object>();
		pageMap.put("startNum", startNum);
		pageMap.put("endNum", endNum);
		pageMap.put("storeNo", storeNo);
		
		List<GameVo> storeGameList = gameDao.selectStoreGameList(pageMap);
		
		//보유 게임 리스트
		List<OwnedGameVo> storeOwnedList = adminDao.selectOwnedList(storeNo);
		
//		필요한 페이지의 갯수 구하기
		//게시글의 총 갯수
		int totalCnt = gameDao.selectCnt();
		
		//페이지 버튼 갯수
		int pageBtnCnt = 5;
		
		//마지막 버튼 번호
		int endPageBtnNo = (int)Math.ceil((crtPage/(double)pageBtnCnt)) * pageBtnCnt;
		
		//시작 버튼 번호
		int startPageBtnNo = endPageBtnNo - (pageBtnCnt -1);
		
		boolean next = false;
		//다음 화살표 표현 유무
		if( (endPageBtnNo * listCnt)  < totalCnt) {
			next = true;
		} else {
			endPageBtnNo = (int)Math.ceil(totalCnt/(double)listCnt);
		}
		
		boolean prev = false;
		//이전 화살표 표현 유무
		if(startPageBtnNo != 1) {
			prev = true;
		}
		
		Map<String, Object> listMap = new HashMap<String, Object>();
		listMap.put("storeGameList", storeGameList);
		listMap.put("storeOwnedList", storeOwnedList);
		listMap.put("endPageBtnNo", endPageBtnNo);
		listMap.put("startPageBtnNo", startPageBtnNo);
		listMap.put("next", next);
		listMap.put("prev", prev);
		
		return listMap;
	
	}
	
	//게임 보유 매장 리스트
	public List<StoreVo> getOwnedStoreList(int gameNo) {
		List<StoreVo> ownedStoreList = gameDao.selectOwnedStoreList(gameNo);
		return ownedStoreList;
	}
	
	/*
	@Autowired(required=false)
	@Qualifier("uploadPath")
	private String uploadPath;
	
	//게임등록
	public int gameUpload(GameVo gameVo, MultipartFile file, HttpServletRequest req) throws Exception{
		System.out.println("[GameService: gameUpload]");
			
		
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = GameUploadUtil.calcPath(imgUploadPath);
		String fileName = null;

		if(file != null) {
		 fileName =  GameUploadUtil.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
		} else {
		 fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

		gameVo.setGameImg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		gameVo.setGameThumbImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		 
		int count = gameDao.gameUpload(gameVo);
		
		return count; 
				
	}
	*/
}
