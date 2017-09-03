package global.sesoc.memo;

import static org.junit.Assert.*;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import global.sesoc.memo.dao.MemoDAO;
import global.sesoc.memo.vo.MemberVO;
import global.sesoc.memo.vo.MemoVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
			locations={"file:src/main/webapp/WEB-INF/spring/root-context.xml"}
		)
public class MemoTest {
	
	
	@Test
	public void testLogin() {
	}
	
	@Test
	public void testUserList() {
	}
	
	@Test
	public void testSend() {
	}
	
	@Test
	public void testSentMemos() {
	}
	
	@Test
	public void testReceivedMemos() {
	}
}
