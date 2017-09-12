package global.sesoc.memo.dao;


import java.util.ArrayList;

import global.sesoc.memo.vo.ReservationVO;

/**
 * 데이터 베이스를 처리할 매퍼 인터페이스
 * 로그인, 유저 리스트, 쪽지 보내기, 보낸 쪽지, 받은 쪽지에 대한
 * 인터페이스를 제공 
 */
public interface ReservationDAO {
	/*예약하기*/
	public int schduleAdd(ReservationVO reservation);
	
	public ArrayList<ReservationVO> readReservation();
}
