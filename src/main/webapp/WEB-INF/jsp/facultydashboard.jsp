<jsp:include page="fheader.jsp" />

<style>
    .image-container {
        position: relative; /* To position the text inside */
        width: 100%;
        height: 400px; /* Set a default height */
        background-image: url('https://digitallearning.eletsonline.com/wp-content/uploads/2019/12/Why-School-education-crucial-for-child-development.jpg'); /* Replace with your image URL */
        background-size: cover;
        background-position: center;
        display: flex;
        justify-content: center;
        align-items: center;
        overflow: hidden; /* Ensure content doesn't overflow the container */
    }

    /* Responsive height adjustments */
    @media (max-width: 1200px) {
        .image-container {
            height: 350px;
        }
    }

    @media (max-width: 992px) {
        .image-container {
            height: 300px;
        }
    }

    @media (max-width: 768px) {
        .image-container {
            height: 250px;
        }
    }

    @media (max-width: 576px) {
        .image-container {
            height: 200px;
        }
    }
</style>

<!-- New Image Container with Centered Text -->
<div class="image-container">
    <!-- Add any text or content you want to overlay here -->
    <!-- Example:
    <h1 class="text-white">Your Text Here</h1>
    -->
</div>

<jsp:include page="footer.jsp" />
