<%-- 
    Document   : newjsp
    Created on : 4 Oct, 2021, 10:10:31 AM
    Author     : hp
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/suraj_1", "root", "root");
            out.println("connect");

        String uname=request.getParameter("t1");
        String email=request.getParameter("e1");
        String pass=request.getParameter("p1");


        PreparedStatement ps=con.prepareStatement("insert into untitled2 values(?,?,?)");
        ps.setString(1, uname);
        ps.setString(2, email);

        ps.setString(3, pass);

        int i=ps.executeUpdate();
        out.println("Record Saved Successfully!!");
        ps.close();
        con.close();
        %>
    </body>
</html>
