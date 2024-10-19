<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:include page="sheader.jsp" />
<br>
<b style="margin-left: 50px;">Wel come</b>
<% out.println(session.getAttribute("name"));%>
<hr style="border: 2px solid black;">


<div style="margin-left: 50px;">
    <h4 align="center">Exam Question</h4><br>

    <form method="get" action="save_student_answer">
        <c:forEach var="qu" items="${all_question}">
            <div>
                <label>Q.${qu.slno} -> ${qu.question}</label><br>
                <input type="radio" name="q${qu.slno}" value="1"> ${qu.option1}<br/>
                <input type="radio" name="q${qu.slno}" value="2"> ${qu.option2}<br/>
                <input type="radio" name="q${qu.slno}" value="3"> ${qu.option3}<br/>
                <input type="radio" name="q${qu.slno}" value="4"> ${qu.option4}<br/>

            </div><br><br>
       
        </c:forEach>
        <input type="submit" value="submit Answer" />
        
    </form>
</div>