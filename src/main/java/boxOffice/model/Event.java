package boxOffice.model;

import java.sql.Date;

public class Event {
	private int evNum;
	private String evTitle;
	private String evContent;
	private String id;
	private String evPhoto;
	private Date evDate;
	private int evReadCount;
	private String evClose;
	
	public int getEvNum() {
		return evNum;
	}
	public void setEvNum(int evNum) {
		this.evNum = evNum;
	}
	public String getEvTitle() {
		return evTitle;
	}
	public void setEvTitle(String evTitle) {
		this.evTitle = evTitle;
	}
	public String getEvContent() {
		return evContent;
	}
	public void setEvContent(String evContent) {
		this.evContent = evContent;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEvPhoto() {
		return evPhoto;
	}
	public void setEvPhoto(String evPhoto) {
		this.evPhoto = evPhoto;
	}
	public Date getEvDate() {
		return evDate;
	}
	public void setEvDate(Date evDate) {
		this.evDate = evDate;
	}
	public int getEvReadCount() {
		return evReadCount;
	}
	public void setEvReadCount(int evReadCount) {
		this.evReadCount = evReadCount;
	}
	public String getEvClose() {
		return evClose;
	}
	public void setEvClose(String evClose) {
		this.evClose = evClose;
	}
}
