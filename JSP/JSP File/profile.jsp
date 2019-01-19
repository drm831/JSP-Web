<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>

<head>
    <title>Member Account Information</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
        .home {
            font-family: "Times New Roman";
            font-size: 25px; 
            text-align: center;
        }
        h1 {
            font-family: "Times New Roman";
            font-size: 50px; 
            text-align: center;
        }
        form {
            font-family: "Times New Roman";
            font-size: 20px;
            text-align: center;
        }
    </style>
</head>

<div class="home">
    <h3><a href="index.jsp"><img src="img/home.png" width="3%"/><br>Home</a></h3>   
</div>

<h1>Nember Profile</h1><hr><br>

<form>
    <%
        String id = (String) request.getParameter("userId");
        String pwd = (String) request.getParameter("userPassword");
        String name = (String) request.getParameter("userName");
        String mail = (String) request.getParameter("mail");
        String mobilePhone = (String) request.getParameter("mobilePhone");
        String homePhone = (String) request.getParameter("homePhone");
        String adress = (String) request.getParameter("adress");
        String age = (String) request.getParameter("userBirth");
        String gender = (String) request.getParameter("gender");
        String profession = (String) request.getParameter("profession");
        String edu = (String) request.getParameter("education");

        session.setAttribute("setID", id);
        session.setAttribute("setPWD", pwd);

        out.print("Account &nbsp;&nbsp; Number : " + id + "<br>" + "<br>");
        out.print("Password : " + pwd + "<br>" + "<br>");
        out.print("Name : " + name + "<br>" + "<br>");
        out.print("E-mail : " + mail + "<br>" + "<br>");
        out.print("Mobile &nbsp;&nbsp; Phone : " + mobilePhone + "<br>" + "<br>");
        out.print("Home &nbsp;&nbsp; Phone : " + homePhone + "<br>" + "<br>");
        out.print("Address : " + adress + "<br>" + "<br>");
        out.print("Date &nbsp;&nbsp; Of &nbsp;&nbsp; Birth : " + age + "<br>" + "<br>");
        out.print("Gender : " + gender + "<br>" + "<br>");
        out.print("Profession : " + profession + "<br>" + "<br>");
        out.print("Education &nbsp;&nbsp; Level : " + edu + "<br>" + "<br>");
    %>
</form>

