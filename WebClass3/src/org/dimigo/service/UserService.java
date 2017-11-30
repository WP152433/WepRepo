/**
 * 
 */
package org.dimigo.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import org.dimigo.dao.UserDao;
import org.dimigo.vo.UserVO;

/**
 * <pre>
 * org.dimigo.service
 *    l_ UserService
 * 
 * 1. 개요 : 
 * 2. 작성일 : 2017. 11. 6.
 * </pre>
 * 
 * @author : pengfox
 * @version : 1.0
 */
public class UserService extends AbstractService {
	public UserVO login(UserVO user) throws Exception {
		
		Connection conn = null;
		try {
			conn = getConnection();
			UserDao dao = new UserDao(conn);
			UserVO result = dao.searchUser(user);
			
			if (result == null) throw new Exception("Invalid username or password");
			return result;
		} finally {
			if (conn != null) conn.close();
		}
		
		/*
		//DB에서 id, pw 조회
		boolean result = true;
		if (result) {
			user.setId(user.getId());
			user.setName("홍길동");
			user.setNickname("의적");
		} else {
			throw new Exception("Invalid username or password");
		}
		
		return user;
		*/
	}
	
	public List<UserVO> searchUserList(UserVO user) throws Exception {
		
		Connection conn = null;
		try {
			conn = getConnection();
			UserDao dao = new UserDao(conn);
			
			dao.searchUserList(user);
		} finally {
			if (conn != null) conn.close();
		}
		
		
		
		List<UserVO> list = new ArrayList<>();
		list.add(new UserVO("aaa@naver.com", "톰크루즈", "배우아저씨"));
		list.add(new UserVO("bbb@naver.com", "톰크루즈	", "배우아저씨"));
		list.add(new UserVO("ccc@naver.com", "톰크루즈", "배우아저씨"));
		
		return list;
	}
	
	public void signup(UserVO user) throws Exception {
		Connection conn = null;
		try {
			conn = getConnection();
			UserDao dao = new UserDao(conn);

			UserVO result = dao.searchUserById(user);
			
			if (result != null) throw new Exception("이미 사용중인 아이디입니다");
			
			dao.insertUser(user);
		} finally {
			if (conn != null) conn.close();
		}
	}
}
