<%@ page import="java.util.*" %>
<%
    // Create or get cart
    List<String> cart = (List<String>) session.getAttribute("cart");
    if (cart == null) {
        cart = new ArrayList<>();
    }

    // Handle add to cart
    String item = request.getParameter("item");
    if (item != null) {
        cart.add(item);
    }

    session.setAttribute("cart", cart);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Food App</title>
    <style>
        body { font-family: Arial; text-align: center; }
        .menu { display: flex; justify-content: center; gap: 20px; }
        .item { border: 1px solid #ccc; padding: 15px; width: 120px; }
        button { background: green; color: white; border: none; padding: 5px 10px; }
    </style>
</head>
<body>

<h1>pistahouse Food Menu</h1>

<div class="menu">
    <div class="item">
        <h3>Burger</h3>
        <p>₹100</p>
        <form>
            <input type="hidden" name="item" value="Burger - ₹100">
            <button type="submit">Add</button>
        </form>
    </div>

    <div class="item">
        <h3>Pizza</h3>
        <p>₹200</p>
        <form>
            <input type="hidden" name="item" value="Pizza - ₹200">
            <button type="submit">Add</button>
        </form>
    </div>

    <div class="item">
        <h3>Fries</h3>
        <p>₹80</p>
        <form>
            <input type="hidden" name="item" value="Fries - ₹80">
            <button type="submit">Add</button>
        </form>
    </div>
</div>

<h2>🛒 Cart</h2>
<ul>
<%
    for (String c : cart) {
%>
    <li><%= c %></li>
<%
    }
%>
</ul>

</body>
</html>
