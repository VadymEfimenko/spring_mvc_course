<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>
<h2>Hello employee, enter your name</h2>

<br>
<br>

<form:form action="showDetails" modelAttribute="employee">
    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br>
    Surname <form:input path="surname"/>
    <br>
    Salary <form:input path="salary"/>
    <form:errors path="salary"/>
    <br>
    Department <form:select path="department">
    <form:option value="IT" label="IT"/>
    <form:option value="HR" label="HR"/>
    <form:option value="DEVELOPER" label="DEVELOPER"/>
</form:select>
    <br>
    Car
    <br>
    BMW <form:radiobutton path="car" value="BMW"/>
    MERCEDES <form:radiobutton path="car" value="MERCEDES"/>
    AUDI <form:radiobutton path="car" value="AUDI"/>
    <br>
    Languages
    <br>
    EN <form:checkbox path="languages" value="EN"/>
    DE <form:checkbox path="languages" value="DE"/>
    SP <form:checkbox path="languages" value="SP"/>
    <br>
    Phone Number <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br>
    Email <form:input path="email"/>
    <form:errors path="email"/>
    <input type="submit" value="OK">
</form:form>

</body>
</html>