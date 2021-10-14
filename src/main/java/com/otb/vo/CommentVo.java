package com.otb.vo;

public class CommentVo {
	
	private int commentNo;
	private int matchingNo;
	private int userNo;
	private String commentContent;
	private String commentRegDate;
	
	public CommentVo() {
		super();
	}
	
	public CommentVo(int commentNo, int matchingNo, int userNo, String commentContent, String commentRegDate) {
		super();
		this.commentNo = commentNo;
		this.matchingNo = matchingNo;
		this.userNo = userNo;
		this.commentContent = commentContent;
		this.commentRegDate = commentRegDate;
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

	@Override
	public String toString() {
		return "CommentVo [commentNo=" + commentNo + ", matchingNo=" + matchingNo + ", userNo=" + userNo
				+ ", commentContent=" + commentContent + ", commentRegDate=" + commentRegDate + "]";
	}
	
}
