package global.sesoc.memo.vo;

import java.util.List;

public class Rlist {
	private List<ReservationVO> rlist;
	
	public Rlist() {
		// TODO Auto-generated constructor stub
	}

	public Rlist(List<ReservationVO> rlist) {
		super();
		this.rlist = rlist;
	}

	public List<ReservationVO> getRlist() {
		return rlist;
	}

	public void setRlist(List<ReservationVO> rlist) {
		this.rlist = rlist;
	}

	@Override
	public String toString() {
		return "Rlist [rlist=" + rlist + "]";
	}
	
}
