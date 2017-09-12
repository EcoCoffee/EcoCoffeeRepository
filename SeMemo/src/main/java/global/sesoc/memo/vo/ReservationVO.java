package global.sesoc.memo.vo;

public class ReservationVO {
	
	int resernum; 
	String cafeid;  
	String reserDate;
    String reserTime;
	public ReservationVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReservationVO(int resernum, String cafeid, String reserDate, String reserTime) {
		super();
		this.resernum = resernum;
		this.cafeid = cafeid;
		this.reserDate = reserDate;
		this.reserTime = reserTime;
	}
	public int getResernum() {
		return resernum;
	}
	public void setResernum(int resernum) {
		this.resernum = resernum;
	}
	public String getCafeid() {
		return cafeid;
	}
	public void setCafeid(String cafeid) {
		this.cafeid = cafeid;
	}
	public String getReserDate() {
		return reserDate;
	}
	public void setReserDate(String reserDate) {
		this.reserDate = reserDate;
	}
	public String getReserTime() {
		return reserTime;
	}
	public void setReserTime(String reserTime) {
		this.reserTime = reserTime;
	}
	@Override
	public String toString() {
		return "ReservationVO [resernum=" + resernum + ", cafeid=" + cafeid + ", reserDate=" + reserDate
				+ ", reserTime=" + reserTime + "]";
	}
    
    
}
