<!DOCTYPE html>
<%@ page language="java" import="java.util.List"import="com.xjtu.domain.User" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% List<User> userlist=(List<User>)session.getAttribute("userlist"); %>
<html>
<head>
<link href="/css/bootstrap-responsive.css"  rel="stylesheet"/>
<link href="/css/bootstrap.css" rel="stylesheet"/>
<link href="/css/userInfoList.css" rel="stylesheet"/>
</head>
<body>
<img src="../img/logo.png">
<table class="zebraStriped table-bordered" align="center">
<tr><th width="100px" name="name">name</th><th width="100px" name="university">university</th><th width="100px" name="email">email</th><th width="100px" name="telephone">telephone</th></tr>
<% for (User u:userlist){ %>
<tr id=<%=u.getUserId() %>><td width="100px" name="name"><%=u.getName() %></td><td width="100px" name="university"><%=u.getUniversity() %></td><td width="100px" name="email"><%=u.getEmail() %></td><td width="100px" name="telephone"><%=u.getPhone() %></td></tr>
<% } %>
</table>
</body>
</html>