<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .register-container {
            background-color: #ffffff;
            padding: 40px 30px;
            border-radius: 15px;
            box-shadow: 0px 10px 25px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 450px;
        }

        .register-container h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        .register-container input[type="text"],
        .register-container input[type="email"],
        .register-container input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0 20px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-sizing: border-box;
            font-size: 16px;
        }

        .register-container input[type="submit"] {
            width: 100%;
            background-color: #28a745;
            color: white;
            padding: 14px;
            font-size: 18px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .register-container input[type="submit"]:hover {
            background-color: #218838;
        }

        .error {
            color: red;
            text-align: center;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <div class="register-container">
        <h2>Register</h2>

        <% if (request.getParameter("error") != null) { %>
            <div class="error">Registration failed. Please try again or check input.</div>
        <% } %>

        <form action="/PizzaOrderingSystem/RegisterServlet" method="post">
            <input type="text" name="name" placeholder="Full Name" required />
            <input type="email" name="email" placeholder="Email Address" required />
            <input type="password" name="password" placeholder="Password" required />
            <input type="text" name="contact" placeholder="Contact Number" maxlength="15" required />
            <input type="text" name="address" placeholder="Address" required />
            <input type="submit" value="Register" />
        </form>
    </div>
</body>
</html>
