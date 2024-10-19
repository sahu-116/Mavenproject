<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Education System</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <link
    href="https://w7.pngwing.com/pngs/275/188/png-transparent-education-school-icon-children-education-infographic-child-text-thumbnail.png"
    rel="shortcut icon">
  <style>
    .my-4 {
      margin-top: 4.5rem !important;
      margin-bottom: 1.5rem !important;
    }
  </style>
</head>

<body>
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Welcome <% out.println(session.getAttribute("name")); %></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link" href="/">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/profile">Profile</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/logout">Logout</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Button Container -->
  <div class="container text-center my-4">

    <div class="btn-group" role="group" aria-label="Basic example">
      <a href="/exam" class="btn btn-primary mx-1">Exam</a>
      <a href="/result" class="btn btn-success mx-1">Result</a>
      <a href="#" class="btn btn-info mx-1">Videos</a>
      
    
    </div>
  </div>