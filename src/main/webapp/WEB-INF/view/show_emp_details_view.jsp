<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<h2>Welcome</h2>
<br>

Your name is: ${employee.name}
<br>
Your surname is: ${employee.surname}
<br>
Your salary is: ${employee.salary}
<br>
Your department is: ${employee.department}
<br>
Your car is: ${employee.car}
<br>
Your language(s) is:
<ul>
    <c:forEach var="lang" items="${employee.languages}">
        <li> ${lang} </li>
    </c:forEach>
</ul>
<br>
Phone Number: ${employee.phoneNumber}
<br>
Email: ${employee.email}

<br>

</html>