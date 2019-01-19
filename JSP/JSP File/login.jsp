<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>

<head>
    <title>Member Login</title>
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
            background: #FFCC00;
        } 
        h3 {
            font-family: "Times New Roman"; 
            font-size: 18px; 
            text-align: center;
        }
        input[type=text], input[type=password], input[type=submit], input[type=reset] {
            width: 60%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        .content {
            font-family: "Times New Roman"; 
            font-size: 20px; 
            text-align: center;
        }
    </style>
</head>

<div class="home">
    <h3><a href="index.jsp"><img src="img/home.png" width="3%"/><br>Home</a></h3>
    
    
</div>

<form action="loginprocess.jsp" method="action">
    <div>
        <h1>Sign &nbsp;&nbsp; in</h1>
        <h3><a href="register.html"> Forgot your account number and password?
                Register now！</a></h3><br>
    </div>

    <div class="content">
        <p>ID<br>
            <input type =text name ="account" placeholder="Enter Username" size="35"></p>
        <p>Password<br>
            <input type =text name ="password" placeholder="Enter Password" size="35"></p><br><br>

        <input class="w3-button w3-block w3-teal" type="submit" value="Confirm">
        <input id="reset" class="w3-button w3-block w3-red" type="reset" value="Re-Enter">
    </div>
</form>