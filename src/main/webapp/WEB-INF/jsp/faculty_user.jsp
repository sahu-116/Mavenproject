<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="fheader.jsp" />

<!-- Including Bootstrap for responsive table -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

<style>
    table, th, td {
        border: 1px solid black;
        border-collapse: collapse;
    }

    .table-container {
        overflow-x: auto; /* Adds horizontal scroll for small screens */
    }
</style>

<div class="container mt-4">
    <h2 class="mb-4">User List</h2>

    <div class="table-container">
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Mobile No.</th>
                    <th>Role</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${user}">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.name}</td>
                        <td>${user.email}</td>
                        <td>${user.password}</td>
                        <td>${user.mobile}</td>
                        <td>${user.role}</td>
                        <td>
                            <form method="post" action="faculty_manage_user">
                                <input type="hidden" name="email" value="${user.email}" />
                                <button type="submit" name="btn" value="Delete" class="btn btn-danger btn-sm">Delete</button>
                                <button type="submit" name="btn" value="Edit" class="btn btn-warning btn-sm">Edit</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<jsp:include page="footer.jsp" />

<!-- Including Bootstrap JS for full functionality -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
