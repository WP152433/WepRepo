<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<%
Calendar cal = Calendar.getInstance(); //싱글톤!
%>
    <footer class="footer">
      <div class="container">
        <span class="text-muted">&copy; <%=cal.get(Calendar.YEAR)%> my company.com </span>
      </div>
    </footer>