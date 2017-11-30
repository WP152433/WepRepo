/**
 * 
 */
package org.dimigo.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dimigo.service.UserService;
import org.dimigo.vo.UserVO;

/**
 * <pre>
 * org.dimigo.action
 *    l_ ListAction
 * 
 * 1. 개요 : 
 * 2. 작성일 : 2017. 11. 3.
 * </pre>
 * 
 * @author : pengfox
 * @version : 1.0
 */
public class ListAction implements IAction {

	/* (non-Javadoc)
	 * @see org.dimigo.action.IAction#execute(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		UserService service = new UserService();
		//List<UserVO>  list = service.searchUserList();
		
	      //request.setAttribute("list", list);
	      //request.getRequestDispatcher("/JSP/list.jsp").forward(request, response);
	}

}
