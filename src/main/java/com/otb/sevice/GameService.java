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
	public GameVo gameRead(int gameNo) {
		System.out.println("[GameService.gameRead()]");
		
		GameVo GameVo = gameDao.gameRead(gameNo);
		
		System.out.println(GameVo);
		
		return GameVo;
	}
	
	//게임등록
	public int gameRegister(GameVo gameVo) {
		System.out.println("[GameService: gameWrite]");
		
		int gameRegister = gameDao.gameRegister(gameVo);

		return gameRegister;
	}
	
}
