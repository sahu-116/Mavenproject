<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:include page="fheader.jsp" />
<br>

<div style="margin-left: 50px;">
    <h4 align="center">Student Questions</h4><br>

    <form method="post" action="stu_doubts">
        <c:forEach var="qu" items="${all_question}">
            <div>
                <label>Q.${qu.slno} :- ${qu.question}</label><br>
                <input type="hidden" name="slno" id="slno" value="${qu.slno}">
                <textarea name="answer" rows="3" cols="50" id="answer" placeholder="Enter answer"></textarea>
                <input type="submit" value="submit Answer" /><br>
            </div><br><br>
       
        </c:forEach>

        ${message}

    </form>
</div>