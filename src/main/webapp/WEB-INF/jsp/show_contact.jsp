<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="aheader.jsp" />
<style>
	table,th,td{
	
		border: 1px solid black;
		border-collapse: collapse;
	
	}
</style>


	<table class="table">
		<tr>
			<th>Sl no.</th>
			<th>Name</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Message</th>
		</tr>
		
		<c:forEach var="user" items="${user}">
		<tr>
			<td>${user.slno}</td>
			<td>${user.name}</td>
			<td>${user.email}</td>
			<td>${user.phone}</td>
			<td>${user.message}</td>

			<td>
			<form method="post" action="manage_contact">
				<input type="hidden" name="email" value="${user.email}" />
				<input type="submit" name="btn" value="Delete" />
			</form>
			</td>
		</tr>
		</c:forEach>
	</table>
    ${message}
<jsp:include page="footer.jsp" />