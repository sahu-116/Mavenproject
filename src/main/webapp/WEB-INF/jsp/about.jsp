<jsp:include page="mainheader.jsp"/>

<style>
  .container-about {
    margin-top: 15px;
    padding: 10px;
  }

  @media (max-width: 768px) {
    /* Adjust margin and padding for smaller screens */
    .container-about {
      margin-top: 20px;
      padding: 5px;
      text-align: center; /* Centers text content on smaller screens */
    }
  }
</style>

<div class="container-about">
  <div class="container">
    <!-- Bootstrap container class for responsive layout -->
    <div class="row justify-content-center">
      <div class="col-md-20 col-sm-20">
        <!-- Responsive column classes -->
        <h3>Welcome to About</h3>
      </div>
    </div>
  </div>
</div>

<jsp:include page="footer.jsp"/>
