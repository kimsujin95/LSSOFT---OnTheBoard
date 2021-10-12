package com.otb.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otb.vo.MessageVo;

@Repository
public class MessageDao {

	@Autowired
	private SqlSession sqlSession;

	public ArrayList<MessageVo> messageList(MessageVo messageVo) {

		String nick = messageVo.getNick();

		// 메세지 리스트에 나타낼 것들 가져오기 - 가장 최근 메세지, 보낸사람 profile, nick
		ArrayList<MessageVo> list = (ArrayList) sqlSession.selectList("message.message_list", messageVo);

		for (MessageVo mVo : list) {

			mVo.setNick(nick);

			// 현재 사용자가 해당 room에서 안읽은 메세지의 갯수를 가져온다.
			int unread = sqlSession.selectOne("message.count_unread", mVo);

			// 현재 사용자가 메세제를 주고받는 상대 profile을 가져온다.
			String profile = sqlSession.selectOne("message.get_other_profile", mVo);

			// 안읽은 메세지 갯수를 mVo에 set.
			mVo.setUnread(unread);
			// 메세지 상대의 프로필 사진을 mVo에 set.
			mVo.setProfile(profile);

			// 메세지 상대 nick을 set.
			if (nick.equals(mVo.getSend_nick())) {

				mVo.setOther_nick(mVo.getRecv_nick());

			} else {

				mVo.setOther_nick(mVo.getSend_nick());

			}

		}

		return list;

	}

	// room 별 메세지 내용을 가져온다.

	public ArrayList<MessageVo> roomContentList(MessageVo messageVo) {

		// 메세지 내역을 가져온다
		ArrayList<MessageVo> clist = (ArrayList) sqlSession.selectList("message.room_content_list", messageVo);

		// 해당 방의 메세지들 중 받는 사람이 현재 사용자의 nick인 메세지를 모두 읽음 처리한다.

		sqlSession.update("message.message_read_chk", messageVo);

		return clist;

	}

	// 메세지 list에서 메세지를 보낸다.

	public int messageSendInlist(MessageVo messageVo) {

		// 메세지리스트에서 보낸건지 프로필에서 보낸건지 구분하기 위함

		if (messageVo.getRoom() == 0) { // room이 0이라면 프로필에서 보낸것

			int exist_chat = sqlSession.selectOne("message.exist_chat", messageVo);
			// 프로필에서 보낸것중 메세지 내역이 없어서 첫메세지가 될 경우를 구분하기 위함

			if (exist_chat == 0) { // 메세지 내역이 없어서 0이면 message 테이블의 room 최댓값을 구해서 Vo에 set한다.

				int max_room = sqlSession.selectOne("message.max_room", messageVo);
				messageVo.setRoom(max_room + 1);

			} else { // 메세지 내역이 있다면 해당 room 번호를 가져온다.
				int room = Integer.parseInt(sqlSession.selectOne("message.select_room", messageVo));
				messageVo.setRoom(room);
			}

		}

		int flag = sqlSession.insert("message.messageSendInlist", messageVo);
		return flag;
	}

}