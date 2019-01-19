<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>

<head>
    <title>Ticket information</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
        .home {
            font-family: "Times New Roman";
            font-size: 25px; 
            text-align: center;
        }
        .w3-display-topright {
            font-family: "Times New Roman";
            font-size: 25px; 
            text-align: right;
        }
        h1 {
            font-family: "Times New Roman";
            font-size: 50px;
            text-align: center;
            background: #50C878;
        }
        form {
            font-family: "Times New Roman";
            font-size: 20px; 
            text-align: center;
        }
        .ticket1 {
            font-family: "Times New Roman";
            font-size: 23px;
            text-align: center; 
            background: #F0F8FF;
        }
        .ticket2 {
            font-family: "Times New Roman";
            font-size: 20px;
            text-align: center;
            background: #FFF8DC;
        }
        .ticket3 {
            font-family: "Times New Roman";
            font-size: 20px;
            text-align: center;
            background: #F5F5DC;
        }
        .ticket4 {
            font-family: "Times New Roman";
            font-size: 20px;
            text-align: center; 
            background: 	#F5F5F5;
        }
        .button {
            font-family: "Times New Roman"; 
            font-size: 20px; 
            text-align: center;
            width: 100%;
        }
    </style>
</head>

<div class="home">    
    <h3><a href="index.jsp"><img src="img/home.png" width="3%"/><br>Home</a></h3>
</div>

<div class="w3-display-topright">    
    <%
        String id = (String) session.getAttribute("userid");
        String pwd = (String) session.getAttribute("userpwd");
        String getid = (String) session.getAttribute("setID");
        String getpwd = (String) session.getAttribute("setPWD");

        if (getid == null && getpwd == null) {
            out.print("Not Signed In" + "<br>");
            out.print("<a href=login.jsp>Sign in</a>");
        } else if (id == null && pwd == null) {
            out.print("Not Signed In" + "<br>");
            out.print("<a href=login.jsp>Sign in</a>");
        } else if (id.equals(id) && pwd.equals(pwd)) {
            out.print("Welcom " + id + "<br>");
            out.print("<a href=logout.jsp>Sign Out</a>");
        }
    %>
</div>

<h1>Ticket &nbsp;&nbsp; Information</h1><br><br>

<form action="shoppingCart.jsp" method="action">
    <div class="ticket1">
        <br><img src="img/ticket.png" width="10%"/>
        <p>Child &nbsp;&nbsp; Ticket</p>
        <p>100 &nbsp;&nbsp; dollars</p>
        <select name ="childTicket">
            <option value="Please choose">Please &nbsp; Choose</option>
            <option value="1">1 &nbsp; piece</option>
            <option value="2">2 &nbsp; piece</option>
            <option value="3">3 &nbsp; piece</option>
            <option value="4">4 &nbsp; piece</option>
        </select><br><br>
    </div><br><br>
    <div class="ticket2">
        <br><img src="img/ticket4.png" width="10%"/>
        <p>Teens &nbsp;&nbsp; Ticket</p>
        <p>100 &nbsp;&nbsp; dollars</p>
        <select name ="teensTicket">
            <option value="Please choose">Please &nbsp; Choose</option>
            <option value="1">1 &nbsp; piece</option>
            <option value="2">2 &nbsp; piece</option>
            <option value="3">3 &nbsp; piece</option>
            <option value="4">4 &nbsp; piece</option>
        </select><br><br>
    </div><br><br>
    <div class="ticket3">
        <br><img src="img/tickets2.png" width="10%"/>
        <p>Adult &nbsp;&nbsp; Ticket</p>
        <p>200 &nbsp;&nbsp; dollars</p>
        <select name="adultTicket">
            <option value="Please choose">Please &nbsp; Choose</option>
            <option value="1">1 &nbsp; piece</option>
            <option value="2">2 &nbsp; piece</option>
            <option value="3">3 &nbsp; piece</option>
            <option value="4">4 &nbsp; piece</option>
        </select><br><br>
    </div><br><br>
    <div class="ticket4">
        <br><img src="img/ticket3.png" width="10%"/>
        <p class="old">Elderly/Disabled</p>
        <p class="price4">free</p>
        <select name ="oldTicket">
            <option value="Please choose">Please &nbsp; Choose</option>
            <option value="1">1 &nbsp; piece</option>
            <option value="2">2 &nbsp; piece</option>
            <option value="3">3 &nbsp; piece</option>
            <option value="4">4 &nbsp; piece</option>
        </select>
    </div><br><br>

    <div class="button">
        <input class="w3-button w3-deep-orange" type="submit" name="buyChildTicket01" value="Buy Now">
    </div>
</form>

