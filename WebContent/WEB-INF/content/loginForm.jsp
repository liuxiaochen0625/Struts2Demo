<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><s:property value="getText('loginPage')"/></title>
</head>
<body>
	<s:form action="login">
	<!-- 生成一个用户名文本输入框 -->
	<s:textfield name="username" key="user"/>
	<!-- 生成一个密码文本输入框 -->
	<s:textfield name="password" key="pass"/>
	<!-- 生成一个提交按钮 -->
	<s:submit key="login"/>
</s:form>
</body>
</html>