<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Insert title here</title>
    </head>

    <body>
        <%@page import = "java.io.IOException , javax.servlet.*,java.sql.*,java.io.*" %>




            <%
String email = request.getParameter("email");
String password = request.getParameter("pwd");
String url = "jdbc:mysql://localhost:3306/db";
String username = "root";
String pass = "";
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(url,username,pass);
session.setAttribute("email",email);
String query = "select * from signup where email = ? and password = ?";

PreparedStatement ps = con.prepareStatement(query);
ps.setString(1,email);
ps.setString(2,password);

ResultSet a = ps.executeQuery();
if(a.next()){
out.print("User login Successfully");
}
else{
	out.print("Wrong Username or password");
}

ps.setString(1,email);
ps.setString(2,password);

response.sendRedirect("trip.jsp");





%>
    </body>

    </html>