<jsp:include page="sheader.jsp"/>



<title>Doubt page</title>
  <style>
    .container-doubt{
        max-width: 900px;
        height: 350px;
        margin: 0 auto;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(16, 1, 1, 0.1);
        background: transparent;
    }

    .form-group{
        margin-bottom: 20px;
    }

    .form-group input{
        width: 100%;
        padding: 10px;
        background: transparent;
        border: none;
        outline: none;
        border-bottom: 3px solid rgb(46, 10, 10);

    }

    .form-group button{
        width: 100%;
        padding: 10 px;
        background-color: #357fd9;
        color: #fff;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }
  </style>
  
<div class="container-doubt">
    <h2>Frequently Ask Here</h2>
    <form method="post" action="/doubt">
        <div class="form-group">
            <label>Doubt</label>
            <input type="text" id="doubt" name="doubt" placeholder="Enter your doubt" required>
        </div><br><br>

        <div class="form-group">
            <button type="submit">Submit</button>
        </div>
        <br>
        <center><h4>${message}</h4></center>

        <a href="/doubt_status">See Status</a>

    </form>
</div>









