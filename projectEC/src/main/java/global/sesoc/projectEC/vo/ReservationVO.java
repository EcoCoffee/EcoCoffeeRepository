package global.sesoc.projectEC.vo;

public class ReservationVO {
	
	int resernum; 				//예약번호
	String cafeid;				//카페아이디
	String cafename;			//카페이름
	String cafetel;				//카페전화
	String businessid;			//수거업체아이디
	String businessname;		//수거업체이름
	String businesstel;			//수거업체전화
	String reserdate;			//예약날짜
    String resertime;			//예약시간
    String msg;					//쪽지상태
	public ReservationVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReservationVO(int resernum, String cafeid, String cafename, String cafetel, String businessid,
			String businessname, String businesstel, String reserdate, String resertime, String msg) {
		super();
		this.resernum = resernum;
		this.cafeid = cafeid;
		this.cafename = cafename;
		this.cafetel = cafetel;
		this.businessid = businessid;
		this.businessname = businessname;
		this.businesstel = businesstel;
		this.reserdate = reserdate;
		this.resertime = resertime;
		this.msg = msg;
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
	public String getCafename() {
		return cafename;
	}
	public void setCafename(String cafename) {
		this.cafename = cafename;
	}
	public String getCafetel() {
		return cafetel;
	}
	public void setCafetel(String cafetel) {
		this.cafetel = cafetel;
	}
	public String getBusinessid() {
		return businessid;
	}
	public void setBusinessid(String businessid) {
		this.businessid = businessid;
	}
	public String getBusinessname() {
		return businessname;
	}
	public void setBusinessname(String businessname) {
		this.businessname = businessname;
	}
	public String getBusinesstel() {
		return businesstel;
	}
	public void setBusinesstel(String businesstel) {
		this.businesstel = businesstel;
	}
	public String getReserdate() {
		return reserdate;
	}
	public void setReserdate(String reserdate) {
		this.reserdate = reserdate;
	}
	public String getResertime() {
		return resertime;
	}
	public void setResertime(String resertime) {
		this.resertime = resertime;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	@Override
	public String toString() {
		return "ReservationVO [resernum=" + resernum + ", cafeid=" + cafeid + ", cafename=" + cafename + ", cafetel="
				+ cafetel + ", businessid=" + businessid + ", businessname=" + businessname + ", businesstel="
				+ businesstel + ", reserdate=" + reserdate + ", resertime=" + resertime + ", msg=" + msg + "]";
	}
	
    
}
