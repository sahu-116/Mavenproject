<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome To My Website</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" 
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<link href="https://w7.pngwing.com/pngs/275/188/png-transparent-education-school-icon-children-education-infographic-child-text-thumbnail.png" rel="shortcut icon">

<style>
    .image-container {
        position: relative; /* Positioning for overlay text */
        width: 100%;
        height: 50vh; /* Responsive height for large screens */
        background-image: url('https://digitallearning.eletsonline.com/wp-content/uploads/2019/12/Why-School-education-crucial-for-child-development.jpg');
        background-size: cover;
        background-position: center;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    /* Additional media queries for better responsiveness */
    @media (max-width: 1200px) {
        .image-container {
            height: 40vh; /* Adjust height for medium screens */
        }
    }

    @media (max-width: 992px) {
        .image-container {
            height: 35vh; /* Adjust height for tablets */
        }
    }

    @media (max-width: 768px) {
        .image-container {
            height: 30vh; /* Adjust height for small screens */
        }
    }

    @media (max-width: 576px) {
        .image-container {
            height: 25vh; /* Further reduce height for extra-small screens */
        }
    }

    .text-overlay {
        position: absolute; /* Ensures text stays centered */
        color: white; /* Text color */
        text-align: center; /* Center align text */
        font-size: 1.5rem; /* Responsive font size */
        padding: 0 1rem; /* Add padding to prevent overflow */
        max-width: 90%; /* Prevents text overflow on small screens */
    }
</style>
</head>
<body>
    <jsp:include page="aheader.jsp" />

    <!-- Responsive Image Container with Bootstrap -->
    <div class="container-fluid p-0">
        <div class="image-container">
            <!-- Centered and responsive text overlay -->
            <div class="text-overlay">
                <h2>Your Centered Text Here</h2>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp" />
</body>
</html>
