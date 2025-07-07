<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Pizza Ordering System</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>

    <div class="header">
        <h1>Welcome to Pizza Express</h1>
        <p>Fast, Hot & Delicious Pizza Delivered to Your Door</p>
    </div>

    <div class="banner-container">
        <img src="../images/pizza-delivery.png" alt="Pizza Delivery Banner" class="banner" />
        
        <div class="button-group">
            <form action="../jsp/register.jsp" method="get">
                <button type="submit" class="action-btn">Register</button>
            </form>
            <form action="../jsp/order.jsp" method="get">
                <button type="submit" class="action-btn">Order Now</button>
            </form>
        </div>
    </div>

   
</body>
</html>
