<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Education System</title>
  <link href="https://w7.pngwing.com/pngs/275/188/png-transparent-education-school-icon-children-education-infographic-child-text-thumbnail.png" rel="shortcut icon">
  <link rel="stylesheet" href="style.css">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

  <style>
    body {
      font-family: Arial, sans-serif;
      scroll-behavior: smooth;
      padding-top: 56px; /* Offset for fixed navbar */
    }

    /* Animation styles */
    @keyframes typing {
      from {
        width: 0;
      }
      to {
        width: 100%;
      }
    }

    @keyframes blink-caret {
      from,
      to {
        border-color: transparent;
      }
      50% {
        border-color: black;
      }
    }

    @keyframes fadeInUp {
      0% {
        opacity: 0;
        transform: translateY(20px);
      }
      100% {
        opacity: 1;
        transform: translateY(0);
      }
    }

    @keyframes bounce {
      0%,
      100% {
        transform: translateY(0);
      }
      50% {
        transform: translateY(-10px);
      }
    }

    /* Responsive adjustments */
    @media (max-width: 768px) {
      .container {
        flex-direction: column;
      }
    }

    .btn-group-custom {
      display: flex;
      flex-wrap: wrap;
      gap: 5px;
    }

    /* Override the default navbar height */
    .navbar-nav .nav-link {
      font-size: 14px;
    }
  </style>
</head>

<body>
  <!-- Navbar -->
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Faculty Dashboard</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="/">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/profile">Profile</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/faculty_user">Users</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/question">Question</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/stu_doubts">Stu-Doubts</a>
          </li>
        </ul>
      </div>
      <div class="btn-group-custom">
        <a href="/login"><button type="button" class="btn btn-outline-light">Logout</button></a>
        <a href="/faculty_register_user"><button type="button" class="btn btn-warning">Sign-Up</button></a>
        <a href="/change_pwd"><button type="button" class="btn btn-outline-light">Change Pwd</button></a>
      </div>
    </div>
  </nav>

  <!-- Bootstrap JS (with Popper for tooltips and popovers) -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>

</html>
