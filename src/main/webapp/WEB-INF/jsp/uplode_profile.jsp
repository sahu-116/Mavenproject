<jsp:include page="sheader.jsp" />

<title>Profile Update</title>

<style>
    .container-update {
        max-width: 600px;
        margin: 50px auto;
        padding: 20px;
        background-color: #f9f9f9;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    h2 {
        text-align: center;
    }

    label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
    }

    input[type="file"],
    input[type="number"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border-radius: 4px;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }

    input[type="submit"] {
        display: block;
        width: 100%;
        padding: 10px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }

    .message {
        text-align: center;
        color: green;
        font-weight: bold;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .container-update {
            width: 90%;
            padding: 15px;
        }

        input[type="file"],
        input[type="number"],
        input[type="submit"] {
            padding: 8px;
        }
    }

    @media (max-width: 480px) {
        .container-update {
            width: 100%;
            padding: 10px;
        }

        input[type="file"],
        input[type="number"],
        input[type="submit"] {
            padding: 6px;
        }
    }
</style>

<div class="container-update">
    <h2>Profile Update</h2>

    <form method="post" enctype="multipart/form-data" action="uplode_profile">
        <label for="f">Photo</label>
        <input type="file" name="f" id="f" accept="image/*"/><br><br>

        <label for="number">Age</label>
        <input type="number" name="number" id="number" max="100" min="18" value="18"/><br><br>

        <input type="submit" name="btn" value="Upload"/><br><br>

        <div class="message">
            ${message}
        </div>
    </form>
</div>

<jsp:include page="footer.jsp" />
