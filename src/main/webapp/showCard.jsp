<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 16.03.2022
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show Card</title>
</head>
<body>
<%@page import="logic.Card" %>
<%
    Card card = (Card) session.getAttribute("card");
    out.println("<h1>CARD</h1>");
    out.println("<p> Name: " + card.getName() + "</p>");
    out.println("<p> quantity: " + card.getQuantity() + "</p>");
%>

</body>
</html>
