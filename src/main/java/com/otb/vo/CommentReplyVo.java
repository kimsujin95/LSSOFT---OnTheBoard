package com.otb.vo;

public class CommentReplyVo {

	private int commentUserNo;
	private int commentNo;
	private String commentUserNickname;
	private String commentContent;
	private String commentRegDate;
	private int userNo;
	private int replyNo;
	private String replyUserNickname;
	private String replyContent;
	private String replyRegDate;
	
	public CommentReplyVo() {
		super();
	}
	
	public CommentReplyVo(int commentUserNo, int commentNo, String commentUserNickname, String commentContent,
			String commentRegDate, int userNo, int replyNo, String replyUserNickname, String replyContent,
			String replyRegDate) {
		super();
		this.commentUserNo = commentUserNo;
		this.commentNo = commentNo;
		this.commentUserNickname = commentUserNickname;
		this.commentContent = commentContent;
		this.commentRegDate = commentRegDate;
		this.userNo = userNo;
		this.replyNo = replyNo;
		this.replyUserNickname = replyUserNickname;
		this.replyContent = replyContent;
		this.replyRegDate = replyRegDate;
	}

	public int getCommentUserNo() {
		return commentUserNo;
	}

	public void setCommentUserNo(int commentUserNo) {
		this.commentUserNo = commentUserNo;
	}

	public int getCommentNo() {
		return commentNo;
	}

	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}

	public String getCommentUserNickname() {
		return commentUserNickname;
	}

	public void setCommentUserNickname(String commentUserNickname) {
		this.commentUserNickname = commentUserNickname;
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

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getReplyNo() {
		return replyNo;
	}

	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}

	public String getReplyUserNickname() {
		return replyUserNickname;
	}

	public void setReplyUserNickname(String replyUserNickname) {
		this.replyUserNickname = replyUserNickname;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public String getReplyRegDate() {
		return replyRegDate;
	}

	public void setReplyRegDate(String replyRegDate) {
		this.replyRegDate = replyRegDate;
	}

	@Override
	public String toString() {
		return "CommentReplyVo [commentUserNo=" + commentUserNo + ", commentNo=" + commentNo + ", commentUserNickname="
				+ commentUserNickname + ", commentContent=" + commentContent + ", commentRegDate=" + commentRegDate
				+ ", userNo=" + userNo + ", replyNo=" + replyNo + ", replyUserNickname=" + replyUserNickname
				+ ", replyContent=" + replyContent + ", replyRegDate=" + replyRegDate + "]";
	}

}
