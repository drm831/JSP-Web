<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>

<head>
    <title>Login Information</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
        .home {
            font-family: "Times New Roman";
            font-size: 25px; 
            text-align: center;
        }
        form {
            font-family: "Times New Roman";
            font-size: 50px; 
            text-align: center;
        }
    </style>
</head>

<div class="home">
    <h3><a href="index.jsp"><img src="img/home.png" width="3%"/><br>Home</a></h3><br><br>
    
</div>

<form>
    <%
        String id = (String) request.getParameter("account");
        String pwd = (String) request.getParameter("password");
        String getid = (String) session.getAttribute("setID");
        String getpwd = (String) session.getAttribute("setPWD");

        session.setAttribute("userid", id);
        session.setAttribute("userpwd", pwd);

        if (id.equals(getid) && pwd.equals(getpwd)) {
            out.print("Sign In Suceesfully！" + "<br>");
        } else {
            out.print("Login Failed．．．" + "<br>");
        }
    %>
</form><br><br>


