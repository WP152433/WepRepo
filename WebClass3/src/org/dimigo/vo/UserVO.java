/**
 * 
 */
package org.dimigo.vo;

/**
 * <pre>
 * org.dimigo.vo
 *    l_ UserVO
 * 
 * 1. 개요 : 
 * 2. 작성일 : 2017. 9. 25.
 * </pre>
 * 
 * @author : pengfox
 * @version : 1.0
 */
public class UserVO {
	private String id, pw, name, nickname;

	
	
	public UserVO() {
	}

	public UserVO(String id, String name, String nickname) {
		this.id = id;
		this.name = name;
		this.nickname = nickname;
	}

	public String getId() {
		return id;
	}
	
	public String getPw() {
		return pw;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	/**
	 * @param id2
	 */
}
