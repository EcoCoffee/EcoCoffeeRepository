package global.sesoc.memo.dao;

import java.util.ArrayList;
import java.util.List;

import global.sesoc.memo.vo.MemberVO;
import global.sesoc.memo.vo.MemoVO;

/**
 * 데이터 베이스를 처리할 매퍼 인터페이스
 * 로그인, 유저 리스트, 쪽지 보내기, 보낸 쪽지, 받은 쪽지에 대한
 * 인터페이스를 제공 
 */
public interface MemoDAO {
	/*로그인*/
	public MemberVO login(MemberVO cmember);
	/*유저리스트*/
	public ArrayList<MemberVO> userlist();
	/*쪽지보내기*/
	public int send(MemoVO memo);
	/*보낸쪽지*/
	public ArrayList<MemoVO> selectmemo(String fromId);
	/*받은쪽지에 대한 인터페이스를 제공*/
	public ArrayList<MemoVO> receivedmemo(String fromId);
}
