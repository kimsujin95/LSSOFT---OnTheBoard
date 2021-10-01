package com.otb.sevice;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otb.dao.GameDao;
import com.otb.vo.GameVo;

@Service
public class GameService {

	@Autowired
	private GameDao gameDao;
	
	
	//게임목록
	public List<GameVo> gameList(){
		System.out.println("[GameService.gameList()]");
		
		List<GameVo> gameList = gameDao.gameList();
		
		System.out.println(gameList);
		
		return gameList;
	}
	
	//게임상세정보
	public GameVo gameDetails(int gameNo) {
		System.out.println("[GameService.gameRead()]");
		
		GameVo GameVo = gameDao.gameDetails(gameNo);
		
		System.out.println(GameVo);
		
		return GameVo;
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
