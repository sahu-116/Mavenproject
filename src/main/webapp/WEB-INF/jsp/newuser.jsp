<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<jsp:include page="header.jsp" />

<title>New User Page</title>

<!-- Adding Bootstrap for better styling and responsiveness -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

<script type="text/javascript">
    function check() {
        password = document.getElementById("password").value;
        passwordError = true;
        passwordValid();
        if (passwordError == true) {
            return true;
        } else {
            return false;
        }
    }

</script>

<style>
    .container-newuser {
        max-width: 400px;
        margin: 50px auto;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        background-color: #fff;
    }

    .form-group input, .form-group select {
        width: 100%;
        padding: 10px;
        background: transparent;
        border: none;
        outline: none;
        border-bottom: 2px solid rgb(46, 10, 10);
    }

    .form-group button {
        width: 100%;
        padding: 10px;
        background-color: #0964d4;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .form-group button:hover {
        background-color: #074da0;
    }

    .register-link {
        text-align: center;
        display: block;
        margin-top: 15px;
    }
</style>

<div class="container-newuser">
    <h2 class="text-center mb-4">User Details</h2>
    <form method="post" action="newuser" onsubmit="return check();">
        <div class="form-group mb-3">
            <label for="name" class="form-label">Name</label>
            <input type="text" id="name" name="name" class="form-control" placeholder="Enter your name" required>
        </div>
        <div class="form-group mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email" required>
        </div>
        <div class="form-group mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" name="password" id="password" class="form-control" placeholder="Enter your password" required>
            <small id="msg" class="text-danger"></small>
        </div>
        <div class="form-group mb-3">
            <label for="mobile" class="form-label">Mobile No.</label>
            <input type="text" name="mobile" id="mobile" class="form-control" placeholder="Enter your mobile number" required>
        </div>
        <div class="form-group mb-3">
            <label for="role" class="form-label">Role Name</label>
            <div>
                <input type="radio" id="student" name="role" value="student" required> 
                <label for="student">Student</label>
                <input type="radio" id="faculty" name="role" value="faculty" required>
                <label for="faculty">Faculty</label>
            </div>
        </div>
        <div class="form-group mb-3">
            <button type="submit" class="btn btn-primary">Create User</button>
        </div>
        <div class="text-center">
            <h6>Have an account?</h6>
            <a href="/login" class="register-link">Login</a>
        </div>
    </form>
</div>

<div class="container">
    <center><h4>${message}</h4></center>
</div>

<jsp:include page="mainfooter.jsp" />
