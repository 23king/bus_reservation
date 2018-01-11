<%@ page import="java.util.Map" %>
<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: 1002353
  Date: 2018. 1. 11.
  Time: 오전 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>error</title>
    <script>
        window.onload=function(){
            var form = document.getElementById("error");
            form.action="${targetUrl}";
            alert("${message}");
            form.submit();
        }
    </script>
</head>
<body>
    <form name="error">
        <%
            Enumeration enuma = request.getParameterNames();
            while(enuma.hasMoreElements()) {
                String key = String.valueOf(enuma.nextElement());
        %>
        <input type="hidden" name="<%=key%>" value="<%=request.getParameter(key)%>"/>
        <%
            }
        %>
    </form>
</body>
</html>
