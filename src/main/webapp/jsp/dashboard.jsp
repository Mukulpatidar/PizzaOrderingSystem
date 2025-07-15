<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%
    String email = (String) session.getAttribute("userEmail");
    String name = (String) session.getAttribute("userName");
    if (email == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<h2>Welcome, <%= name %>!</h2>

<html>
<head>
    <title>User Dashboard</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #fdf1ec;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .dashboard {
            background: #fff;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0,0,0,0.15);
            border-radius: 10px;
            text-align: center;
        }
        .dashboard h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .dashboard a {
            display: inline-block;
            margin: 10px;
            padding: 12px 24px;
            text-decoration: none;
            background-color: #ff4d00;
            color: #fff;
            border-radius: 5px;
            transition: 0.3s;
        }
        .dashboard a:hover {
            background-color: #e43e00;
        }
    </style>
</head>
<body>
    <div class="dashboard">
       
        <a href="order.jsp">Order Pizza</a>
        <a href="profile.jsp">View Profile</a>
        <a href="logout.jsp">Logout</a>
    </div>
</body>
</html>
