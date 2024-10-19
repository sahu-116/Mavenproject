<jsp:include page="fheader.jsp" />


<title>Question page</title>
  <style>
    .container-question{
        max-width: 1000px;
        margin: 0 auto;
        padding: 60px;
        background-color: darkgray;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }

    .form-group{
        margin-bottom: 20px;
    }

    .form-group input{
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
    }
    .form-group-1{
        margin-bottom: 20px;
    }

    .form-group-1 input{
        width: 20%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
    }

    .form-group button{
        width: 20%;
        padding: 15 px;
        background-color: #0e5dde;
        color: #fff;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }
  </style>
  
<div class="container-question">
    <h2>Question</h2>
    <form method="post" action="/save_question">
        <div class="form-group">
            <label for="subject">Subject</label>
            <input type="text" id="subject" name="subject" placeholder="Enter subject" required>
        </div>
        
        <div class="form-group">
            <label for="question">Question</label>
            <input type="text" id="question" name="question" placeholder="Enter question" required>
        </div>
        <div class="form-group">
            <label for="option1">Option1</label>
            <input type="text" id="option1" name="option1" placeholder="Enter option1" required>
        </div>
        <div class="form-group">
            <label for="option2">Option2</label>
            <input type="text" id="option2" name="option2" placeholder="Enter option2" required>
        </div>
        <div class="form-group">
            <label for="option3">Option3</label>
            <input type="text" id="option3" name="option3" placeholder="Enter option3" required>
        </div>
        <div class="form-group">
            <label for="option4">Option4</label>
            <input type="text" id="option4" name="option4" placeholder="Enter option4" required>
        </div>
        <div class="form-group">
            <label for="option4">Option4</label>
            <input type="text" id="answer" name="answer" placeholder="Enter answer" required>
        </div>

        <!-- <div class="form-group-1">
            <label for="answer">Answer</label>
            <input type="number" id="answer" name="answer" placeholder="Answer option" min="1" max="4" required>
        </div> -->
        <div class="form-group">
            <button type="submit">Submit</button>
        </div>
    </form>
</div>

<br>
<center><h4>${message}</h4></center>
<jsp:include page="footer.jsp" />
