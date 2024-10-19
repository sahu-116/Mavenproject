<%@page import="java.util.*" %>
<%
    String name=(String) request.getAttribute("name");
    Integer id=(Integer) request.getAttribute("id");
%>
<hr>
Name : <%=name %><br>
ID : <%=id %><br>
<%
    List<String> list=(ArrayList<String>) request.getAttribute("f");
        for(String s:list)
            out.println(s+"<br>");
%>

<hr>
<br>
<hr>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${f}" var="i">
    <c:out value="${i}" />
    <hr>
</c:forEach>