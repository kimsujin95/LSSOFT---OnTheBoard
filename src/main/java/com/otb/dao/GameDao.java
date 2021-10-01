package com.otb.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otb.vo.GameVo;

@Repository
public class GameDao {

	@Autowired
	private SqlSession sqlSession;
	
	//게임목록
	public List<GameVo> gameList(){
		System.out.println("[GameDao.gamelist]");
		
		List<GameVo> gameList = sqlSession.selectList("game.list");
		System.out.println(gameList);
		
		return gameList;
	}

	//게임상세정보
	public GameVo gameDetails(int gameNo) {
		System.out.println("[GameDao.gameRead]");
		
		GameVo GameVo = sqlSession.selectOne("game.read", gameNo);
		
		System.out.println(GameVo);

		return GameVo;
	}
	
	//게임등록
	public int gameUpload(GameVo gameVo) {
		System.out.println("[GameDao: gameUpload]");
		
		int gameUpload = sqlSession.insert("game.write",gameVo);

		return gameUpload;
	}
	
	
}
