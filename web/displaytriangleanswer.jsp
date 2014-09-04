<%-- 
    Document   : displaytriangleanswer
    Created on : Sep 3, 2014, 9:15:01 PM
    Author     : peter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>The Answer!</h1>
        <p>
            <%
              Object area = request.getAttribute("area");
              
              if(area == null) {
                  out.println("There was an error...");
              } else {
                  out.println("The area of that triangle is: " + area);
              }
            %>
        </p>
    </body>
</html>
