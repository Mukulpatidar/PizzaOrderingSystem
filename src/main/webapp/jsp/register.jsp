<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head><title>Register</title></head>
<body>
    <form action="../RegisterServlet" method="post">
        Name: <input type="text" name="name"/><br/>
        Address: <input type="text" name="address"/><br/>
        Phone No: <input type="text" name="phone"><br/>
        Email: <input type="email" name="email"><br/>
        <input type="submit" value="Register"/>
    </form>
</body>
</html>
