<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>

<head>
    <title>Home</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
        form {
            font-family: "Times New Roman";
            font-size: 25px; 
            text-align: right;
        }
        h1 {
            font-family: "Times New Roman";
            font-size: 70px;
            display: block; 
            clear: both; 
            text-align: center;
            background: #E6E6FA;
        }
        #registered {
            font-family: "Times New Roman";
            font-size: 25px; 
            display: block; 
            clear: both;
            text-align: center; 
            background: #FFC0CB;
        }       
        #ticket {
            font-family: "Times New Roman";
            font-size: 25px; 
            display: block; 
            clear: both;
            text-align: center;
            background: #50C878;
        }
         #signIn {
            font-family: "Times New Roman";
            font-size: 25px; 
            display: block; 
            clear: both; 
            text-align: center; 
            background: #FFCC00;
        }
        #signOut {
            font-family: "Times New Roman";
            font-size: 25px;
            display: block; 
            clear: both; 
            text-align: center;
            background: #DDA0DD;
        }
    </style>
</head>

<form>    
    <%
        String id = (String) session.getAttribute("userid");
        String pwd = (String) session.getAttribute("userpwd");
        String getid = (String) session.getAttribute("setID");
        String getpwd = (String) session.getAttribute("setPWD");

        if (getid == null && getpwd == null) {
            out.print("Not Signed In" + "<br>");
            out.print("<a href='login.jsp'>Sign in</a>");
        } else if (id == null && pwd == null) {
            out.print("Not Signed in" + "<br>");
            out.print("<a href='login.jsp'>Sign in</a>");
        } else if (id.equals(id) && pwd.equals(pwd)) {
            out.print("Welcom " + id + "<br>");
            out.print("<a href='logout.jsp'>Sign Out</a>");
        }
    %>
</form>

<h1 style="text-shadow: 10px 10px 2px gray, 20px 20px 2px silver">Kabi &nbsp;&nbsp; 
    Beast &nbsp;&nbsp; Zoo</h1><br><br>

<body>
    <nav id="registered"><br>
        <h2><a href="register.html">Registered &nbsp;&nbsp; Member</a></h2><hr>
    </nav><br>
    <nav id="ticket"><br>
        <h2><a href="ticket.jsp">Ticket &nbsp;&nbsp; Information</a></h2><hr>
    </nav><br>
    <nav id="signIn"><br>
        <h2><a href="login.jsp">Sign &nbsp;&nbsp; In</a></h2><hr>
    </nav><br>
    <nav id="signOut"><br>
        <h2><a href="logout.jsp">Sign &nbsp;&nbsp; Out</a></h2><hr>
    </nav>
</body>

