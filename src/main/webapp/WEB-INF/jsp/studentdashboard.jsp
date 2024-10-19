<jsp:include page="sheader.jsp" />

<style>
    /* Additional custom styles */
body {
    font-family: Arial, sans-serif;
}

.typing-text {
    overflow: hidden; /* Hide overflow to create typing effect */
    white-space: nowrap; /* Prevent text from wrapping */
    border-right: 2px solid; /* Simulate a cursor */
    width: 0; /* Start with width 0 for typing effect */
    animation: typing 4s steps(30, end), blink-caret 0.75s step-end infinite;
}

/* Typing effect animation */
@keyframes typing {
    from { width: 0; }
    to { width: 100%; }
}

@keyframes blink-caret {
    from, to { border-color: transparent; }
    50% { border-color: black; }
}

.responsive-div {
    background-color: #f8f9fa; /* Light gray background */
    padding: 20px; /* Added padding */
    margin-bottom: 30px; /* Increased space between divs */
    border: 1px solid #ddd;
    border-radius: 5px;
    text-align: center;
    min-height: 250px; /* Increased minimum height */
    opacity: 0; /* Start invisible */
    transform: translateY(20px); /* Start slightly below */
    animation: fadeInUp 1s ease-out forwards, bounce 0.5s 1s ease-in-out; /* Chained animations */
    transition: transform 0.3s, box-shadow 0.3s; /* Hover effect transition */
}

/* Hover animation: zoom and shadow */
.responsive-div:hover {
    transform: translateY(0) scale(1.05); /* Slight zoom effect */
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); /* Shadow effect */
}

/* Fade-in and slide-up animation */
@keyframes fadeInUp {
    0% {
        opacity: 0;
        transform: translateY(20px); /* Start 20px below */
    }
    100% {
        opacity: 1;
        transform: translateY(0); /* End at normal position */
    }
}

/* New bounce animation */
@keyframes bounce {
    0%, 100% {
        transform: translateY(0); /* Normal position */
    }
    50% {
        transform: translateY(-10px); /* Move slightly up */
    }
}
    
/* Full-width image container without blur effect */
.image-container {
    position: relative; /* To position the text inside */
    width: 100%;
    height: 400px;
    background-image: url('https://digitallearning.eletsonline.com/wp-content/uploads/2019/12/Why-School-education-crucial-for-child-development.jpg'); /* Replace with your image URL */
    background-size: cover;
    background-position: center;
    display: flex;
    justify-content: center;
    align-items: center;
}


.image-text {
    position: absolute;
    color: white;
    font-size: 2rem;
    text-align: center;
    z-index: 1; /* Ensure text is on top */
    background: rgba(0, 0, 0, 0.5); /* Optional: background color with opacity for better text visibility */
    padding: 20px; /* Add padding around text */
    border-radius: 5px; /* Optional: rounded corners for text container */
}
</style>

<!-- New Image Container with Centered Text -->
<div class="image-container">
    <div class="image-text" >
      <h2>Centered Text on Image</h2>
      <p>This text is centered over the background image.</p>
    </div>
  </div>
  
  <!-- Main Content Section with Responsive Divs -->
  <main class="container mt-4">
    <div class="row">
      <!-- First Responsive Div -->
      <div class="col-md-4 col-sm-6 mb-3">
        <div class="responsive-div">
          <h4>Section 1</h4>
          <p>Content for section 1. This content is responsive and will adjust based on screen size.</p>
        </div>
      </div>
      
      <!-- Second Responsive Div -->
      <div class="col-md-4 col-sm-6 mb-3">
        <div class="responsive-div">
          <h4>Section 2</h4>
          <p>Content for section 2. This content is responsive and will adjust based on screen size.</p>
        </div>
      </div>
      
      <!-- Third Responsive Div -->
      <div class="col-md-4 col-sm-12 mb-3">
        <div class="responsive-div">
          <h4>Section 3</h4>
          <p>Content for section 3. This content is responsive and will adjust based on screen size.</p>
        </div>
      </div>
    </div>
  </main>
  
  <!-- Bootstrap JS (with Popper) -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
  </html>

<jsp:include page="footer.jsp" />
