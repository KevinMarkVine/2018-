<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//局部变量
int i=8;
%>
<%!
//全局变量
int j=8;
//判断今年是否是闰年
public boolean isYear(int year){
	return true;
}
%>
i++:<%=i++ %> <!--8  -->
<br>
j++:<%=j++ %><!--自增  -->
</body>
</html>