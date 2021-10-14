package com.otb.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otb.vo.GameBookmarkVo;
import com.otb.vo.GameVo;

@Repository
public class GameBookmarkDao {

	@Autowired
	private SqlSession sqlSession;
	
	//찜하기
	public int insert(GameBookmarkVo gbv) {
		System.out.println("[GameBookmarkDao: insert]");
		//찜 횟수 증가
		GameVo gameVo = new GameVo();
		gameVo.setHitCount(gbv.getGameNo());
		sqlSession.update("game.bookmarkCountUp", gameVo);
		
		int result = sqlSession.insert("game.addBookmark", gbv);
		System.out.println(result);
		
		
		//찜하기 성공시 찜하기 읽기(총합)
		if(result==1) {
			gbv = sqlSession.selectOne("game.bookmarkCount", gameVo );
		}
		
		return result;
	}
	
	
	//찜하기 삭제
	public GameVo delete(GameBookmarkVo gbv) {
		System.out.println("[GameBookmarkDao: delete]");
		
		//찜 횟수 감소
		GameVo gameVo = new GameVo();
		gameVo.setHitCount(gbv.getGameNo());
		sqlSession.update("game.bookmarkCountDown", gameVo);
		
		int result = sqlSession.delete("game.removeBookmark", gbv);
		System.out.println(result);
		
		//횟수 감소 성공시 찜하기 읽기(총합)
		if(result ==1) {
			gbv = sqlSession.selectOne("game.bookmarkCount", gameVo );
		}
		
		return gameVo;
	}
	
}
