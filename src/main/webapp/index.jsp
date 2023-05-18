<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="java.text.DecimalFormat" %>
<%@ page import="org.example.MathUtils" %>
<%@ page import="org.example.ParamUtils" %>

<%
float x = ParamUtils.parseParamAsFloat(request.getParameter("x"), 1f);
float y = ParamUtils.parseParamAsFloat(request.getParameter("y"), 1f);

DecimalFormat formatter = new DecimalFormat("#,###.00");

String xs = formatter.format(x);
String ys = formatter.format(y);
%>

<html>
  <head>
    <meta charset="UTF-8">
    <title>Index</title>
    <script>
      const sum = parseFloat("<%= MathUtils.add(x, y) %>", 10);
      const difference = parseFloat("<%= MathUtils.subtract(x, y) %>", 10);
      const product = parseFloat("<%= MathUtils.multiply(x, y) %>", 10);
      const quotient = parseFloat("<%= MathUtils.divide(x, y) %>", 10);

      const numberFormatter = new Intl.NumberFormat('en-US', { minimumFractionDigits: 1 });

      window.addEventListener("DOMContentLoaded", () => {
        document.querySelector("#sum").textContent = numberFormatter.format(sum);
        document.querySelector("#difference").textContent = numberFormatter.format(difference);
        document.querySelector("#product").textContent = numberFormatter.format(product);
        document.querySelector("#quotient").textContent = numberFormatter.format(quotient);
      });
    </script>
  </head>
  <body>
    <header>
      <h1>Math Utils</h1>
    </header>
    <main>
      <ul>
        <li>Addition of <%= xs %> + <%= ys %> = <span id="sum"></span></li>
        <li>Subtraction of <%= xs %> - <%= ys %> = <span id="difference"></span></li>
        <li>Multiplication of <%= xs %> × <%= ys %> = <span id="product"></span></li>
        <li>Division of <%= xs %> ÷ <%= ys %> = <span id="quotient"></span></li>
      </ul>
    </main>
  </body>
</html>
