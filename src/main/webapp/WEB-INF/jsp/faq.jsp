<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <jsp:include page="mainheader.jsp" />
    <style type="text/css">
        .accordion {
            max-width: 100%;
            margin: 15px auto;
            color: rgb(11, 11, 11);
            background-color: rgb(238, 238, 238);
            background: transparent;
        }

        .accordion .container {
            position: relative;
            margin: 1px 0;
            /* Adjusted margin for better spacing */
        }

        .accordion .label {
            position: relative;
            font-size: 1.25rem;
            /* Responsive font size */
            color: rgb(0, 0, 0);
            cursor: pointer;
            padding: 10px;
            /* Added padding for better touch targets */
        }

        .accordion .label::before {
            content: '+';
            color: rgb(0, 0, 0);
            position: absolute;
            top: 50%;
            right: -110px;
            font-size: 1.5rem;
            transform: translateY(-50%);
        }

        .accordion .content {
            position: relative;
            background-color: rgb(30, 132, 221);
            background: transparent;
            height: 0;
            font-size: 1rem;
            /* Responsive font size */
            text-align: left;
            width: 100%;
            overflow: hidden;
            transition: height 0.5s ease-out;
            /* Smooth transition */
        }

        .accordion hr {
            width: 100%;
            margin: 0;
            border: 1px solid black;
        }

        .accordion .container.active .content {
            height: auto;
            /* Adjust height to fit content */
        }

        .accordion .container.active .label::before {
            content: '-';
            font-size: 1.5rem;
            /* Responsive icon size */
        }

        .container-faq {
            margin-top: 10px;
            text-align: center;
        }

        @media (max-width: 768px) {
            .accordion .label {
                font-size: 1rem;
                /* Smaller font size on smaller screens */
                padding: 8px;
                /* Adjust padding */
            }

            .accordion .label::before {
                font-size: 1.25rem;
                /* Smaller icon size */
                right: 5px;
                /* Adjust position */
            }

            .accordion .content {
                font-size: 0.875rem;
                /* Smaller font size */
            }
        }

        @media (max-width: 576px) {
            .accordion .label {
                font-size: 0.875rem;
                /* Even smaller font size */
                padding: 6px;
                /* Adjust padding */
            }

            .accordion .label::before {
                font-size: 1rem;
                /* Smaller icon size */
                right: 0;
                /* Adjust position */
            }

            .accordion .content {
                font-size: 0.75rem;
                /* Smaller font size */
            }
        }
    </style>

    <h3 class="container-faq">Questions</h3>

    <c:forEach var="qu" items="${all_question}">
        <div class="accordion-body">
            <div class="accordion">
                <hr>
                <div class="container">
                    <div class="label">Q.${qu.slno} -> ${qu.question}</div>
                    <div class="content">Ans -> ${qu.answer}</div>
                </div>
                <hr>
            </div>
        </div>
    </c:forEach>

    <script type="text/javascript">
        const accordion = document.getElementsByClassName('container');

        for (let i = 0; i < accordion.length; i++) {
            accordion[i].addEventListener('click', function () {
                this.classList.toggle('active');
            });
        }
    </script>

    <jsp:include page="footer.jsp" />