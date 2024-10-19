<hr>
Roll Number :${roll} <br>
Nmae :${name} <br>
Date $ Time :${now} <br>
Array :${Arrays.toString(arr)} <br>
<c:forEach var="item" items="${arr}">
    <h1><c:out value="${item}"></c:out></h1>
</c:forEach>