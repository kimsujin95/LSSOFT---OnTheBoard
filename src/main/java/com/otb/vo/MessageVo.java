package com.otb.vo;

public class MessageVo {

	private String no;
	private int room;
	private String send_nick;
	private String recv_nick;
	private String send_time;
	private String read_time;
	private String content;
	private String read_chk;

	private String other_nick;

	private String profile;

	private String nick;

	private int unread;
	
	public MessageVo() {
		
	}

	public MessageVo(String no, int room, String send_nick, String recv_nick, String send_time, String read_time,
			String content, String read_chk, String other_nick, String profile, String nick, int unread) {
		super();
		this.no = no;
		this.room = room;
		this.send_nick = send_nick;
		this.recv_nick = recv_nick;
		this.send_time = send_time;
		this.read_time = read_time;
		this.content = content;
		this.read_chk = read_chk;
		this.other_nick = other_nick;
		this.profile = profile;
		this.nick = nick;
		this.unread = unread;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public int getRoom() {
		return room;
	}

	public void setRoom(int room) {
		this.room = room;
	}

	public String getSend_nick() {
		return send_nick;
	}

	public void setSend_nick(String send_nick) {
		this.send_nick = send_nick;
	}

	public String getRecv_nick() {
		return recv_nick;
	}

	public void setRecv_nick(String recv_nick) {
		this.recv_nick = recv_nick;
	}

	public String getSend_time() {
		return send_time;
	}

	public void setSend_time(String send_time) {
		this.send_time = send_time;
	}

	public String getRead_time() {
		return read_time;
	}

	public void setRead_time(String read_time) {
		this.read_time = read_time;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRead_chk() {
		return read_chk;
	}

	public void setRead_chk(String read_chk) {
		this.read_chk = read_chk;
	}

	public String getOther_nick() {
		return other_nick;
	}

	public void setOther_nick(String other_nick) {
		this.other_nick = other_nick;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public int getUnread() {
		return unread;
	}

	public void setUnread(int unread) {
		this.unread = unread;
	}

	@Override
	public String toString() {
		return "MessageVo [no=" + no + ", room=" + room + ", send_nick=" + send_nick + ", recv_nick=" + recv_nick
				+ ", send_time=" + send_time + ", read_time=" + read_time + ", content=" + content + ", read_chk="
				+ read_chk + ", other_nick=" + other_nick + ", profile=" + profile + ", nick=" + nick + ", unread="
				+ unread + "]";
	}

}
