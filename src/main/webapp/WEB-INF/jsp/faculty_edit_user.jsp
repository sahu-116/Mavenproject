<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="fheader.jsp"/>

<style>
    .container-update-user {
        max-width: 100%;
        width: 100%;
        max-width: 500px; /* Adjust this value as needed */
        margin: 100px auto; /* Center the form and add margin */
        padding: 20px;
        background-color: #f9f9f9;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }

    .form-group input {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
        box-sizing: border-box;
    }

    .form-group input[type="submit"] {
        background-color: #0b47d3;
        color: #fff;
        border: none;
        cursor: pointer;
        font-size: 1rem;
        padding: 12px;
    }

    .form-group input[type="submit"]:hover {
        background-color: #0941a3;
    }

    @media (max-width: 768px) {
        .container-update-user {
            padding: 15px;
        }

        .form-group {
            margin-bottom: 10px;
        }
    }

    @media (max-width: 576px) {
        .container-update-user {
            padding: 10px;
        }

        .form-group {
            margin-bottom: 8px;
        }

        .form-group input[type="submit"] {
            font-size: 0.875rem;
            padding: 10px;
        }
    }
</style>

<div class="container-update-user">
    <h2 class="mb-4">Update User Information</h2>
    <form method="post" action="faculty_update_user">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="${usermaster[0].name}" />
        </div>
        <div class="form-group">
            <label for="role">Role:</label>
            <input type="text" id="role" name="role" value="${usermaster[0].role}" />
        </div>
        <input type="hidden" name="email" value="${usermaster[0].email}" />
        <div class="form-group">
            <input type="submit" name="btn" value="Update" />
        </div>
    </form>
</div>

