<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="aheader.jsp" />

<!-- Adding Bootstrap for better styling and responsiveness -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" 
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

<style>
    .admin-user-table {
        text-align: center;
        margin-top: 70px;
    }
</style>

<div class="container mt-5">
    <h3 class="admin-user-table">User Table</h3>
    <!-- Make the table responsive using Bootstrap's table-responsive class -->
    <div class="table-responsive">
        <table class="table table-bordered table-striped table-hover">
            <thead class="table-dark">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Mobile no.</th>
                    <th>Role</th>
                    <th>Function</th>
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
                            <form method="post" action="admin_manage_user" class="d-flex justify-content-center">
                                <input type="hidden" name="email" value="${user.email}" />
                                <input type="submit" name="btn" value="Delete" class="btn btn-danger btn-sm mx-1" />
                                <input type="submit" name="btn" value="Edit" class="btn btn-primary btn-sm mx-1" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<jsp:include page="footer.jsp" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
