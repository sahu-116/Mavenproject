<jsp:include page="aheader.jsp" />

<title>Question page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

<style>
  .container-question {
    max-width: 800px; /* Restrict max width for larger screens */
    margin: 60px auto; /* Center align */
    padding: 40px;
    background-color: darkgrey;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  }

  .form-group button {
    width: 100%; /* Make button full-width on small screens */
    padding: 10px;
    background-color: #0e5dde;
    color: #fff;
    border: none;
    border-radius: 3px;
    cursor: pointer;
  }

  @media (max-width: 768px) {
    .container-question {
      padding: 20px;
    }

    .form-group button {
      width: 100%; /* Ensures button remains full-width on smaller screens */
    }
  }
</style>

<div class="container container-question">
  <!-- Bootstrap container class for responsiveness -->
  <h2 class="text-center mb-4">Admin FAQ</h2>
  <h3>FAQ - Question</h3>
  <form method="post" action="/save_faq">
    <div class="form-group mb-3">
      <label for="question" class="form-label">Question</label>
      <input type="text" class="form-control" id="question" name="question" placeholder="Enter question" required>
    </div>

    <div class="form-group mb-3">
      <label for="answer" class="form-label">Answer</label>
      <input type="text" class="form-control" id="answer" name="answer" placeholder="Enter answer" required>
    </div>

    <div class="form-group mb-3">
      <label for="submited_by" class="form-label">Submitted By</label>
      <input type="text" class="form-control" id="submited_by" name="submited_by" placeholder="Enter your name" required>
    </div>

    <div class="form-group mb-3">
      <button type="submit" class="btn btn-primary">Submit</button>
    </div>
    <h4 class="text-center">${message}</h4>
  </form>
</div>

<jsp:include page="footer.jsp" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
