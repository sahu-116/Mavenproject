<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="aheader.jsp"/>

<!-- Add Bootstrap classes for responsiveness -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

<div class="container mt-5">
    <!-- Container with margin-top for spacing -->
    <form method="post" action="admin_update_user" class="card p-4 shadow-sm">
        <!-- Card for styling the form -->
        <div class="mb-3">
            <label for="name" class="form-label">Name:</label>
            <input type="text" class="form-control" id="name" name="name" value="${user[0].name}" />
        </div>

        <div class="mb-3">
            <label for="role" class="form-label">Role:</label>
            <input type="text" class="form-control" id="role" name="role" value="${user[0].role}" />
        </div>

        <!-- Hidden input to pass email -->
        <input type="hidden" name="email" value="${user[0].email}" />

        <button type="submit" class="btn btn-primary">Update</button>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
