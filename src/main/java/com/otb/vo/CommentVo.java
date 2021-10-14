package com.otb.vo;

public class CommentVo {
	
	private int commentNo;
	private int matchingNo;
	private int userNo;
	private String commentContent;
	private String commentRegDate;
	private String userNickname;
	
	public CommentVo() {
		super();
	}
	
	public CommentVo(int commentNo, int matchingNo, int userNo, String commentContent, String commentRegDate, String userNickname) {
		super();
		this.commentNo = commentNo;
		this.matchingNo = matchingNo;
		this.userNo = userNo;
		this.commentContent = commentContent;
		this.commentRegDate = commentRegDate;
		this.userNickname = userNickname;
	}

	public int getCommentNo() {
		return commentNo;
	}

	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}

	public int getMatchingNo() {
		return matchingNo;
	}

	public void setMatchingNo(int matchingNo) {
		this.matchingNo = matchingNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public String getCommentRegDate() {
		return commentRegDate;
	}

	public void setCommentRegDate(String commentRegDate) {
		this.commentRegDate = commentRegDate;
	}
	
	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	@Override
	public String toString() {
		return "CommentVo [commentNo=" + commentNo + ", matchingNo=" + matchingNo + ", userNo=" + userNo
				+ ", commentContent=" + commentContent + ", commentRegDate=" + commentRegDate + ", userNickname="
				+ userNickname + "]";
	}

}
