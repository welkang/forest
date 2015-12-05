<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Test</title>
</head>
<body>

<%!
    private static final String DEFAULT_USER = "Guest";
%>
<%
    String user = request.getParameter("user");
    if(user == null){
        user = DEFAULT_USER;
    }
%>


<h1>
    Hello, <%= user %>
</h1>
Java runtime version: <%= System.getProperty("java.version") %>
</body>
</html>
