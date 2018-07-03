<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户注册</title>
</head>
<body>
<form name ="dataForm" id="dataForm" action="doUserCreate.jsp" method="post">
	<table class="tb" border="0" cellspacing="5" cellpadding="0" align="center">
		<tr><td align="center" colspan="2" style="text-align:center;" class="text_tabledetail2">用户注册</td></tr>
		<tr>
			<td class="text_tabledetail2">用户名</td>
			<td><input type="text" name="username" value=""/></td>
		</tr>
		<tr>
			<td class="text_tabledetail2">密码</td>
			<td><input type="password" name="password" value=""/></td>
		</tr>
		<tr>
			<td class="text_tabledetail2">确认密码</td>
			<td><input type="password" name="con_password" value=""/></td>
		</tr>
		<tr>
			<td class="text_tabledetail2">email</td>
			<td><input type="text" name="email" value=""/></td>
		</tr>

		<tr>
			<td style="text-align:center;" colspan="2">				
				<button type="submit" class="page-btn" name="save">注册</button>
				<button type="button" class="page-btn" name="return" onclick="javascript:location.href='<%=request.getContextPath() %>/index.jsp'">返回</button>
			</td>
		</tr>
	</table>
</form>
<%
 Object o= request.getAttribute("mess");
if(o!=null){
	out.print(o.toString());
}
%>
</body>
</html>
