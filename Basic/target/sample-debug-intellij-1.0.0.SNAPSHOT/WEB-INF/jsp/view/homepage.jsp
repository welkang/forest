<%@ page import="java.security.SecureRandom" %><%--
  Created by IntelliJ IDEA.
  User: welkang
  Date: 15/12/5
  Time: 下午4:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = (String)request.getAttribute("username");
%>

<html>
<head>
    <title>HomePage</title>
</head>
<body>
    This is HomePage. Hello, <%= username %>
</body>
</html>
