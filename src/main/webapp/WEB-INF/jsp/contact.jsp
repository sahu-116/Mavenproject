<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>CONTACT US</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" 
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<link href="https://w7.pngwing.com/pngs/275/188/png-transparent-education-school-icon-children-education-infographic-child-text-thumbnail.png" rel="shortcut icon">
<style>
  .main-container {
    padding-top: 20px;
    margin-top: 30px;
    display: flex;
    flex-wrap: wrap; /* Allows items to wrap on smaller screens */
    justify-content: center; /* Centers the content horizontally */
    gap: 20px; /* Adds space between the containers */
  }

  .container-details, .container-contact {
    flex: 1 1 300px; /* Flexible width, minimum 300px */
    padding: 20px;
    background-color: aliceblue;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    margin: 10px;
  }

  .form-group input {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    background: transparent;
    border: none;
    color: #333; /* Changed color for better readability */
    border-bottom: 2px solid rgb(41, 15, 15);
  }

  .form-group button {
    width: 100%;
    padding: 10px;
    background-color: #1052b5;
    color: #fff;
    border: none;
    border-radius: 3px;
    cursor: pointer;
    outline: none;
  }

  @media (max-width: 768px) {
    /* For smaller screens */
    .main-container {
      flex-direction: column; /* Stacks items vertically */
    }
  }

  @media (max-width: 576px) {
    .container-details h1, .container-contact h2 {
      font-size: 1.5rem; /* Smaller heading font size on extra-small screens */
    }
    
    .form-group input, .form-group button {
      font-size: 0.875rem; /* Adjust font size for better touch target */
    }
  }
</style>
</head>
<body>
  <jsp:include page="mainheader.jsp"/>
  <div class="main-container">
    <div class="container-details">
      <h1>CONTACT US</h1>
      <h3>India</h3>
      <h5>
        PO Box 4/1515/1752,<br>
        Acharya Vihar,<br>
        Bhubaneswar,<br>
        Odisha - 751014<br>
      </h5>
    </div>

    <div class="container-contact">
      <h2>SEND MESSAGE TO US</h2>
      <form method="post" action="/contact">
        <div class="form-group">
          <label for="name"></label>
          <input type="text" id="name" name="name" placeholder="Name">
        </div>
        <div class="form-group">
          <label for="email"></label>
          <input type="text" id="email" name="email" placeholder="Email">
        </div>
        <div class="form-group">
          <label for="phone"></label>
          <input type="phone" name="phone" id="phone" placeholder="Phone">
        </div>
        <div class="form-group">
          <label for="message"></label>
          <input type="message" name="message" id="message" placeholder="Message">
        </div>
        <div class="form-group">
          <button type="submit">Submit</button>
        </div>
        <br>
        <center><h4>${message}</h4></center>
      </form>
    </div>
  </div>

  <jsp:include page="mainfooter.jsp"/>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" 
          integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
