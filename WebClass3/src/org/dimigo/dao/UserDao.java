/**
 * 
 */
package org.dimigo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.dimigo.vo.UserVO;

/**
 * <pre>
 * org.dimigo.dao
 *    l_ UserDao
 * 
 * 1. 개요 : 
 * 2. 작성일 : 2017. 11. 13.
 * </pre>
 * 
 * @author : pengfox
 * @version : 1.0
 */
public class UserDao {
	private Connection conn = null;
	
	public UserDao(Connection conn) {
		this.conn = conn;
	}
	
	public UserVO searchUser(UserVO vo) throws Exception {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM USER WHERE ID=? AND PW=?";
		System.out.println("1");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId()); //위의 첫번째 ?에 id
			pstmt.setString(2, vo.getPw()); //위의 두번째 ?에 pw
		
			
			rs = pstmt.executeQuery();
			
			UserVO result = null;
			if (rs.next()) {
				result = new UserVO();
				result.setId(rs.getString(1));
				result.setName(rs.getString(3));
				result.setNickname(rs.getString(4));
			}
			
			System.out.println(result);
			return result;
		} catch(Exception e) {
			e.printStackTrace();
			throw new Exception("사용자 조회 시 오류가 발생했습니다");
		} finally {
			if (rs != null) rs.close();
			if (pstmt != null) pstmt.close();
		}
	}
	

	public UserVO searchUserById(UserVO vo) throws Exception {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM USER WHERE ID=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId()); //위의 첫번째 ?에 id
			
			rs = pstmt.executeQuery();
			
			UserVO result = null;
			if (rs.next()) {
				result = new UserVO();
				result.setId(rs.getString(1));
				result.setName(rs.getString(3));
				result.setNickname(rs.getString(4));
			}
			
			System.out.println(result);
			return result;
		} catch(Exception e) {
			e.printStackTrace();
			throw new Exception("사용자 조회 시 오류가 발생했습니다");
		} finally {
			if (rs != null) rs.close();
			if (pstmt != null) pstmt.close();
		}
	}
	
	public List<UserVO> searchUserList(UserVO vo) throws Exception {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT ID, NAME, NICKNAME FROM USER";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			UserVO result = null;
			List<UserVO> list = new ArrayList<>();
			while(rs.next()) {
				result = new UserVO();
				result.setId(rs.getString(1));
				result.setName(rs.getString(3));
				result.setNickname(rs.getString(3));
				list.add(result);
			}
			
			
			System.out.println(list);
			return list;
		} catch(Exception e) {
			e.printStackTrace();
			throw new Exception("사용자 목록 조회 시 오류가 발생했습니다");
		} finally {
			if (rs != null) rs.close();
			if (pstmt != null) pstmt.close();
		}
	}
	

	public void insertUser(UserVO vo) throws Exception {
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO USER VALUES(?, ?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPw());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getNickname());
			
			
			int cnt = pstmt.executeUpdate(); //SELECT만 Execute로, 그 외에는 Update로 호출
			
			if (cnt == 0) throw new Exception("회원 가입에 실패했습니다");
			
		} catch(Exception e) {
			e.printStackTrace();
			throw new Exception("사용자 회원 가입 시 오류가 발생했습니다");
		} finally {
			if (pstmt != null) pstmt.close();
		}
	}
}
