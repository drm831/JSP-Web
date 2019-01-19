<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Information</title>
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
            }
            div{
                font-family: "Times New Roman";
                font-size: 25px;
                text-align: center;
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
                out.print("Not Signed in" + "<br>");
                out.print("<a href=login.jsp>Sign in</a>");
            } else if (id.equals(id) && pwd.equals(pwd)) {
                out.print("Welcom " + id + "<br>");
                out.print("<a href=logout.jsp>Sign Out</a>");
            }
        %>
    </div>

    <h1>My Shopping Information</h1><hr><br><br><br>

    <div>
        <%
            String child = (String) request.getParameter("childTicket");
            String teens = (String) request.getParameter("teensTicket");
            String adult = (String) request.getParameter("adultTicket");
            String old = (String) request.getParameter("oldTicket");

            out.print("Child &nbsp;&nbsp;&nbsp; Ticket : &nbsp; " + child + "&nbsp; number &nbsp; of &nbsp; sheets" + "<br>" + "<br>" + "<br>");
            out.print("Teens &nbsp;&nbsp;&nbsp; Ticket : &nbsp; " + teens + "&nbsp; number &nbsp; of &nbsp; sheets" + "<br>" + "<br>" + "<br>");
            out.print("Adult &nbsp;&nbsp;&nbsp; Ticket : &nbsp; " + adult + "&nbsp; number &nbsp; of &nbsp; sheets" + "<br>" + "<br>" + "<br>");
            out.print("Old &nbsp;&nbsp;&nbsp; Ticket : &nbsp; " + old + "&nbsp; number &nbsp; of &nbsp; sheets" + "<br>" + "<br>" + "<br>");
        %>
    </div>
</html>
