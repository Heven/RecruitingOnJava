<!DOCTYPE html>
<%@ page language="java" import="java.util.List"import="com.xjtu.domain.User" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% List<User> userlist=(List<User>)session.getAttribute("userlist"); %>
<html>
<head>
</head>
<body>
<table>
<tr><td width="100px" name="name">name</td><td width="100px" name="university">university</td></tr>
<% for (User u:userlist){ %>
<tr id=<%=u.getUserId() %>><td width="100px" name="name"><%=u.getName() %></td><td width="100px" name="university"><%=u.getUniversity() %></td></tr>
<% } %>
</table>
</body>
</html>