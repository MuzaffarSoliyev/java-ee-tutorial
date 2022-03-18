<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 16.03.2022
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>First JSP</title>
</head>
    <body>
        <h1>Testing JSP</h1>
        <p>
            <%
                String name = request.getParameter("name");
            %>

            <%= "Hello, " + name%>
        </p>
    </body>
</html>
