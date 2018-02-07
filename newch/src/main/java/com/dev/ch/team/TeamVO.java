package com.dev.ch.team;

import java.util.Date;

public class TeamVO {
	
	private int chTeamSeq;
	private int no;
	private String name;
	private String prfrGrnd;
	private String prfrTime;
	private int fee;
	private String cndtion;
	private String orgPhoto;
	private String newPhoto;
	private String comment;
	private Date fndDate;
	private Date wrtDate;
	private Date updDate;
	private char delYn;
	
	public int getChTeamSeq() {
		return chTeamSeq;
	}
	public void setChTeamSeq(int chTeamSeq) {
		this.chTeamSeq = chTeamSeq;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrfrGrnd() {
		return prfrGrnd;
	}
	public void setPrfrGrnd(String prfrGrnd) {
		this.prfrGrnd = prfrGrnd;
	}
	public String getPrfrTime() {
		return prfrTime;
	}
	public void setPrfrTime(String prfrTime) {
		this.prfrTime = prfrTime;
	}
	public int getFee() {
		return fee;
	}
	public void setFee(int fee) {
		this.fee = fee;
	}
	public String getCndtion() {
		return cndtion;
	}
	public void setCndtion(String cndtion) {
		this.cndtion = cndtion;
	}
	public String getOrgPhoto() {
		return orgPhoto;
	}
	public void setOrgPhoto(String orgPhoto) {
		this.orgPhoto = orgPhoto;
	}
	public String getNewPhoto() {
		return newPhoto;
	}
	public void setNewPhoto(String newPhoto) {
		this.newPhoto = newPhoto;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public Date getFndDate() {
		return fndDate;
	}
	public void setFndDate(Date fndDate) {
		this.fndDate = fndDate;
	}
	public Date getWrtDate() {
		return wrtDate;
	}
	public void setWrtDate(Date wrtDate) {
		this.wrtDate = wrtDate;
	}
	public Date getUpdDate() {
		return updDate;
	}
	public void setUpdDate(Date updDate) {
		this.updDate = updDate;
	}
	public char getDelYn() {
		return delYn;
	}
	public void setDelYn(char delYn) {
		this.delYn = delYn;
	}
	
	@Override
	public String toString() {
		return "TeamVO [chTeamSeq=" + chTeamSeq + ", no=" + no + ", name=" + name + ", prfrGrnd=" + prfrGrnd
				+ ", prfrTime=" + prfrTime + ", fee=" + fee + ", cndtion=" + cndtion + ", orgPhoto=" + orgPhoto
				+ ", newPhoto=" + newPhoto + ", comment=" + comment + ", fndDate=" + fndDate + ", wrtDate=" + wrtDate
				+ ", updDate=" + updDate + ", delYn=" + delYn + "]";
	}
	
}
