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
    }

    
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

    
    @media (max-width: 768px) {
      .container {
        flex-direction: column;
      }
    }
  </style>
</head>

  <body>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">Admin Dashboard</a>
        <!-- Toggler for mobile devices -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
          aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="/">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/admin_user">Users</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/show_contact">Contact</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/suggestion">Suggestions</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/admin_faq">Faq-Question</a>
            </li>
          </ul>
        </div>
        <!-- Buttons aligned to the right -->
        <div class="d-flex ms-auto">
          <a href="/login" class="btn btn-outline-light me-2 btn-responsive">Login</a>
          <a href="/admin_register_user" class="btn btn-warning btn-responsive">Sign-Up</a>
        </div>
    </nav>
    <!-- Optional Content Below Navbar (if needed) -->
    <!-- Main content -->
    <div class="container mt-5 pt-5">
      <!-- Your content goes here -->
    </div>

  </body>

  </html>