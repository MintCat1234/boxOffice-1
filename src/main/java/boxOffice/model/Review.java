package boxOffice.model;

import java.sql.Date;

public class Review {

	 private int rvNum;
	 private String rvTitle;
	 private String rvContent;
	 private String id;
	 private int rvGrade;
	 private int rsCode;
	 private int rvLike;
	 private Date rvDate;
	 private String rvDel;
	 private String movieTitle;
	 private int rvReadCount;
	 
	public int getRvNum() {
		return rvNum;
	}
	public void setRvNum(int rvNum) {
		this.rvNum = rvNum;
	}
	public String getRvTitle() {
		return rvTitle;
	}
	public void setRvTitle(String rvTitle) {
		this.rvTitle = rvTitle;
	}
	public String getRvContent() {
		return rvContent;
	}
	public void setRvContent(String rvContent) {
		this.rvContent = rvContent;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getRvGrade() {
		return rvGrade;
	}
	public void setRvGrade(int rvGrade) {
		this.rvGrade = rvGrade;
	}
	public int getRsCode() {
		return rsCode;
	}
	public void setRsCode(int rsCode) {
		this.rsCode = rsCode;
	}
	public int getRvLike() {
		return rvLike;
	}
	public void setRvLike(int rvLike) {
		this.rvLike = rvLike;
	}
	public Date getRvDate() {
		return rvDate;
	}
	public void setRvDate(Date rvDate) {
		this.rvDate = rvDate;
	}
	public String getRvDel() {
		return rvDel;
	}
	public void setRvDel(String rvDel) {
		this.rvDel = rvDel;
	}
	public String getMovieTitle() {
		return movieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}
	public int getRvReadCount() {
		return rvReadCount;
	}
	public void setRvReadCount(int rvReadCount) {
		this.rvReadCount = rvReadCount;
	}
	 
	 
}
