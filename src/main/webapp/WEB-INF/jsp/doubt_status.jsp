<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


    <jsp:include page="sheader.jsp" />
    <style type="text/css">
        .accordion {
            width: 800px;
            margin: 90px auto;
            color: black;
            background-color: white;

        }

        .accordion .container {
            position: relative;
            margin: 5px 5px;
        }

        /* Positions the labels relative to the .container. Adds padding to the top and bottom and increases font size. Also makes its cursor a pointer */

        .accordion .label {
            position: relative;
            font-size: 20px;
            color: black;
            cursor: pointer;
        }

        .accordion .label::before {
            content: '+';
            color: black;
            position: absolute;
            top: 50%;
            right: -5px;
            font-size: 30px;
            transform: translateY(-50%);
        }

        /* Hides the content (height: 0), decreases font size, justifies text and adds transition */

        .accordion .content {
            position: relative;
            background-color: white;

            height: 0;
            font-size: 20px;
            text-align: justify;
            width: 780px;
            overflow: hidden;
            transition: 0.5s;
        }

        /* Adds a horizontal line between the contents */

        .accordion hr {
            width: 50;
            margin-left: 0;
            border: 1px solid black
        }


        /* Unhides the content part when active. Sets the height */

        .accordion .container.active .content {
            height: 50px;
        }

        /* Changes from plus sign to negative sign once active */

        .accordion .container.active .label::before {
            content: '-';
            font-size: 30px;
        }
    </style>

 
        <h3 align="center">Questions</h3>

        <c:forEach var="qu" items="${all_question}">

            <div class="accordion-body">
                <div class="accordion">
                    <hr>
                    <div class="container">
                        <div class="label">Q.${qu.slno} -> ${qu.question} by:-${qu.sname}</div>
                        <div class="content">Ans -> ${qu.answer} by:-${qu.fname}</div>
                      
                    </div>
                    <hr>
          
                </div>
            </div>
        </c:forEach>


    <script type="text/javascript">
        const accordion = document.getElementsByClassName('container');

        for (i = 0; i < accordion.length; i++) {
            accordion[i].addEventListener('click', function () {
                this.classList.toggle('active')
            })
        }
    </script>

