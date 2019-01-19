<%
    session.removeAttribute("userid");
    session.removeAttribute("userpwd");
    response.sendRedirect("index.jsp");
%>