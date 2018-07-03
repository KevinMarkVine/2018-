<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//无效session
 //session.invalidate();
session.removeAttribute("username");
//重定向到index.jsp
response.sendRedirect("index.jsp");
%>