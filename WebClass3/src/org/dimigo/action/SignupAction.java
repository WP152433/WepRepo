/**
 * 
 */
package org.dimigo.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dimigo.service.UserService;
import org.dimigo.util.CommonUtil;
import org.dimigo.vo.UserVO;

/**
 * <pre>
 * org.dimigo.action
 *    l_ SignupAction
 * 
 * 1. 개요 : 
 * 2. 작성일 : 2017. 11. 3.
 * </pre>
 * 
 * @author : pengfox
 * @version : 1.0
 */
public class SignupAction implements IAction {

	/* (non-Javadoc)
	 * @see org.dimigo.action.IAction#execute(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	private void validate(UserVO vo) throws Exception {
		if (CommonUtil.isEmpty(vo.getId())) throw new Exception("아이디를 입력하세요");
		if (CommonUtil.isEmpty(vo.getPw())) throw new Exception("비밀번호를 입력하세요");
		if (CommonUtil.isEmpty(vo.getName())) throw new Exception("이름을 입력하세요");
		if (CommonUtil.isEmpty(vo.getNickname())) throw new Exception("닉네임을 입력하세요");
	}
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		try {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html);charset=utf-8");
			
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String name = request.getParameter("name");
			String nickname = request.getParameter("nickname");
			
			UserVO user = new UserVO(id, name, nickname);
			user.setPw(pw);
			
			validate(user);
			
			UserService service = new UserService();
			service.signup(user);
			
			RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
			rd.forward(request, response);
		} catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
			RequestDispatcher rd = request.getRequestDispatcher("jsp/signup.jsp");
			rd.forward(request, response);
		}
	}

}
