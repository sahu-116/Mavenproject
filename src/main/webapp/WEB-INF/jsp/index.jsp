<jsp:include page="mainheader.jsp" />

<style>
  .responsive-div {
    background-color: #d6f2ff;
    padding: 20px;
    margin-bottom: 30px;
    border: 1px solid #f8f2f2;
    border-radius: 5px;
    text-align: center;
    min-height: 250px;
    min-width: 250px;
    opacity: 0;
    transform: translateY(20px);
    animation: fadeInUp 1s ease-out forwards, bounce 0.5s 1s ease-in-out;
    transition: transform 0.3s, box-shadow 0.3s;
  }

  .responsive-div:hover {
    transform: translateY(0) scale(1.05);
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
  }

  .image-container {
    position: relative;
    width: 100%;
    height: 400px;
    background-image: url('https://media.licdn.com/dms/image/C5612AQGhqesRjTzyTQ/article-cover_image-shrink_720_1280/0/1619199850629?e=2147483647&v=beta&t=t17cX58YqlSXIzQDZvItjXh2zb0l-k9SK3Yl1iDSUhw');
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
    z-index: 1;
    background: rgba(0, 0, 0, 0.5);
    padding: 20px;
    border-radius: 5px;
  }
</style>

<!-- Sections for single-page navigation -->
<div id="home" class="image-container">
  <div class="image-text">
    <h2>Welcome to Education System project</h2>
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
    <!-- Four Responsive Div -->
    <div class="col-md-4 col-sm-12 mb-3">
      <div class="responsive-div">
        <h4>Section 4</h4>
        <p>Content for section 4. This content is responsive and will adjust based on screen size.</p>
      </div>
    </div>
    <!-- Five Responsive Div -->
    <div class="col-md-4 col-sm-12 mb-3">
      <div class="responsive-div">
        <h4>Section 5</h4>
        <p>Content for section 5. This content is responsive and will adjust based on screen size.</p>
      </div>
    </div>
    <!-- six Responsive Div -->
    <div class="col-md-4 col-sm-12 mb-3">
      <div class="responsive-div">
        <h4>Section 6</h4>
        <p>Content for section 6. This content is responsive and will adjust based on screen size.</p>
      </div>
    </div>
  </div>


</main>

















<jsp:include page="mainfooter.jsp" />