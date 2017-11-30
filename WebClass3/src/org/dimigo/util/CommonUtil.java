/**
 * 
 */
package org.dimigo.util;

/**
 * <pre>
 * org.dimigo.util
 *    l_ CommonUtil
 * 
 * 1. 개요 : 
 * 2. 작성일 : 2017. 11. 1.
 * </pre>
 * 
 * @author : pengfox
 * @version : 1.0
 */
public class CommonUtil {
	public static boolean isEmpty(String s) {
		return s == null || "".equals(s.trim());
	}
	
	public static void main(String[] args) {
		String uri = "/WebClass/jsp/login.do";
		
		//login을 추출하기
		String actionName = uri.substring(uri.lastIndexOf("/") + 1); //login.do
		actionName = actionName.substring(0, actionName.indexOf("."));
		System.out.println("actionName : " + actionName);
	}
}
