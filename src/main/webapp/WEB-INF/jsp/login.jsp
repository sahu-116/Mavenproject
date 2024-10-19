<jsp:include page="mainheader.jsp" />

<title>Login Page</title>

<!-- Adding Bootstrap for better styling and responsiveness -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

<style>
    .container-login {
        max-width: 400px;
        margin: 50px auto;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        background-color: #f9f9f9;
    }

    .form-group input {
        width: 100%;
        padding: 10px;
        background: transparent;
        border: none;
        outline: none;
        border-bottom: 2px solid #2e0a0a;
    }

    .form-group button {
        width: 100%;
        padding: 10px;
        background-color: #0f6fe4;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .form-group button:hover {
        background-color: #0d5bb5;
    }

    .register-link {
        text-align: center;
        display: block;
        margin-top: 15px;
    }

    /* Responsive adjustments */
    @media (max-width: 767px) {
        .container-login {
            margin: 20px;
            padding: 15px;
        }
    }
</style>

<!-- Main Content -->
<div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-4 col-md-6 col-sm-8 col-10">
            <div class="container-login">
                <h2 class="text-center mb-4">Login Here</h2>
                <form method="get" action="/login_check">
                    <div class="form-group mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email" required>
                    </div>
                    <div class="form-group mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" name="password" id="password" class="form-control" placeholder="Enter your password" required>
                    </div>
                    <div class="form-group mb-3">
                        <button type="submit" class="btn btn-primary">Login</button>
                    </div>
                    <div class="text-center">
                        <h6>Don't have an account?</h6>
                        <a href="/newuser" class="register-link">Register</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Display message if any -->
<div class="container">
    <center><h4>${message}</h4></center>
</div>

<jsp:include page="mainfooter.jsp" />


