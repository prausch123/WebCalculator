<%-- 
    Document   : index
    Created on : Sep 3, 2014, 9:19:16 PM
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
        <h1>Area of a Square Calculator</h1>
        <hr>
        <div style='text-align:center;'>
            <form method="post" action="MainController" name="squareForm">
                <table align='center'>
                    <tr>
                        <td>Length:</td>
                        <td><input type='text' name='length' id='length'></td>
                    </tr>
                    <tr>
                        <td>Width:</td>
                        <td> <input type='text' name='width' id='width'></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><input type='submit' value='Get Area!'></td>
                    </tr>
                </table>
            </form>
        </div>
        <h1>Area of a Circle</h1>
        <hr>
        <div style='text-align:center'>
            <form method='post' action='CircleController' name='circleForm'>
                <table align='center'>
                    <tr>
                        <td>Radius:</td>
                        <td><input type='text' name='radius' id='radius'></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><input type='submit' value='Get Area!'></td>
                    </tr>
                </table>
            </form>
        </div>
        <h1>Area of a Triangle</h1>
        <hr>
        <div style='text-align:center'>
            <form method='post' action='TriangleController' name='triangleForm'>
                <table align='center'>
                    <tr>
                        <td>Base:</td>
                        <td><input type='text' name='base' id='base'></td>
                    </tr>
                    <tr>
                        <td>Height:</td>
                        <td><input type='text' name='height' id='height'></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><input type='submit' value='Get Area!'></td>
                    </tr>
                </table>
            </form>
        </div>
        <h1>Answer</h1>
        <hr>
        <div>
            <%
                Object area = request.getAttribute("area");
                if(area == null) {
                    out.println("Use a calculator to display an answer!");
                } else {
                    out.println(area.toString());
                }
            %>
        </div>
    </body>
</html>
