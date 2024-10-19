<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="fheader.jsp" />

<title>Change Password Page</title>
<style>
    .container-change_pwd {
        max-width: 100%; /* Allow container to be responsive */
        width: 100%;
        max-width: 500px; /* Set a maximum width */
        margin: 100px auto; /* Center the container with margin */
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    .form-group {
        margin-bottom: 15px; /* Adjust margin for better spacing */
    }

    .form-group input {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
        box-sizing: border-box; /* Ensure padding is included in width */
    }

    .form-group button {
        width: 100%;
        padding: 10px;
        background-color: #0b47d3;
        color: #fff;
        border: none;
        border-radius: 3px;
        cursor: pointer;
        font-size: 1rem; /* Responsive font size */
    }

    .form-group button:hover {
        background-color: #0941a3; /* Darker shade on hover */
    }

    @media (max-width: 768px) {
        .container-change_pwd {
            padding: 15px; /* Reduce padding on smaller screens */
        }

        .form-group {
            margin-bottom: 10px; /* Reduce margin on smaller screens */
        }
    }

    @media (max-width: 576px) {
        .container-change_pwd {
            padding: 10px; /* Further reduce padding on very small screens */
        }

        .form-group {
            margin-bottom: 8px; /* Further reduce margin */
        }

        .form-group input, .form-group button {
            font-size: 0.875rem; /* Adjust font size for small screens */
        }
    }
</style>

<div class="container-change_pwd">
    <h2>Password Change</h2>
    <form method="post" action="/change_pwd">
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter your email" required>
        </div>
        <div class="form-group">
            <label for="cpassword">Current Password</label>
            <input type="password" name="cpassword" id="cpassword" placeholder="Enter your current password" required>
        </div>
        <div class="form-group">
            <label for="newpassword">New Password</label>
            <input type="password" name="newpassword" id="newpassword" placeholder="Enter your new password" required>
        </div>
        <div class="form-group">
            <button type="submit">Submit</button>
        </div>
    </form>
</div>

<br>
<center><h4>${message}</h4></center>
<jsp:include page="footer.jsp" />
