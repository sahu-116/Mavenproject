<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="aheader.jsp" />
<style>
	table,th,td{

		background: transparent;
	
		border: 1px solid black;
		border-collapse: collapse;
	
	}
</style>
Welcome , <% out.println(session.getAttribute("name")); %>

	<table class="table">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Password</th>
			<th>Mobile no.</th>
			<th>Role</th>
		</tr>
		
		<c:forEach var="user" items="${user}">
		<tr>
			<td>${user.id}</td>
			<td>${user.name}</td>
			<td>${user.email}</td>
			<td>${user.password}</td>
			<td>${user.mobile}</td>
			<td>${user.role}</td>
			<td>
			<form method="post" action="manageusers">
				<input type="hidden" name="email" value="${user.email}" />
				<input type="submit" name="btn" value="Delete" />
				<input type="submit" name="btn" value="Edit" />
			</form>
			</td>
		</tr>
		</c:forEach>
	</table>

<jsp:include page="footer.jsp" />