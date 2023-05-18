<%@page import="org.example.MathUtils" %>
<html>
<body>
<h2>Hello World !!!</h2>

Addition of 20 + 10 =
<%= MathUtils.add(20, 10) %>

<br><br> Subtraction of 20 - 10 =
<%= MathUtils.subtract(20, 10) %>

<br><br> Multiplication of 20 * 10 =
<%= MathUtils.multiply(20, 10) %>

<br><br> Division of 20/10 =
<%= MathUtils.divide(20, 10) %>

</body>
</html>
