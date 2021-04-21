<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    if (request.getParameter("submit") != null) {

        String id = request.getParameter("id");
        String emp_Id = request.getParameter("emp_Id");
        String emp_Name = request.getParameter("emp_Name");
        String emp_Designation = request.getParameter("emp_Designation");
        String emp_Bsic_Sal = request.getParameter("emp_Bsic_Sal");
        String emp_ETF = request.getParameter("emp_ETF");

        Connection conn;
        PreparedStatement pst;
        ResultSet rs;

        Class.forName("com.mysql.jdbc.Driver");

        conn = DriverManager.getConnection("jdbc:mysql://localhost/richmond", "root", "");
        pst = conn.prepareStatement("update sal_details_form set emp_Id =?,emp_Name =?,emp_Designation =?,emp_Bsic_Sal =?,emp_ETF =? where id =?");
        pst.setString(1, emp_Id);
        pst.setString(2, emp_Name);
        pst.setString(3, emp_Designation);
        pst.setString(4, emp_Bsic_Sal);
        pst.setString(5, emp_ETF);
        pst.setString(6, id);
        pst.executeUpdate();
%>
<script>
    alert("Record updated!");
</script>

<%
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Hotel Richmond</title>

        <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
        <link rel="icon" type="image/png" href="assets/1.png"/>

        <!-- Import lib -->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css">
        <link rel="stylesheet" type="text/css" href="fontawesome-free/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <!-- End import lib -->

        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>>
    <body>
        <div class="wrapper">

            <div class="row">
                <div class="col-12 col-m-12 col-sm-12">
                    <div class="card">
                        <div class="card-header">
                            <h3>
                                update Salary Details
                            </h3>
                        </div>
                        <div class="card-content">


                            <div class="container">
                                <form  method="POST" action="#">  

                                    <%
                                        Connection conn;
                                        PreparedStatement pst;
                                        ResultSet rs;

                                        Class.forName("com.mysql.jdbc.Driver");
                                        conn = DriverManager.getConnection("jdbc:mysql://localhost/richmond", "root", "");

                                        String id = request.getParameter("id");
                                        pst = conn.prepareStatement("select * from sal_details_form where id=?");
                                        pst.setString(1, id);
                                        rs = pst.executeQuery();

                                        while (rs.next()) {
                                    %>



                                    <div class="row">
                                        <div class="col-25">
                                            <label for="emp_Id">Enter Employee Id</label>
                                        </div>
                                        <div class="col-75">
                                            <input type="number" name="emp_Id" id="emp_Id" value="<%= rs.getString("emp_Id")%>" placeholder="Enter Employee Id.." required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-25">
                                            <label for="emp_Name">Enter Emoplyee Name</label>
                                        </div>
                                        <div class="col-75">
                                            <input type="text" name="emp_Name" id="emp_Name" value="<%= rs.getString("emp_Name")%>" placeholder="Enter Emoplyee Name" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-25">
                                            <label for="emp_Designation">Enter Designation</label>
                                        </div>
                                        <div class="col-75">
                                            <input type="text" name="emp_Designation" id="emp_Designation" value="<%= rs.getString("emp_Designation")%>" placeholder="Enter Designation" required>

                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-25">
                                            <label for="emp_Bsic_Sal">Enter Basic Salary Amount</label>
                                        </div>
                                        <div class="col-75">
                                            <input type="number" name="emp_Bsic_Sal" id="emp_Bsic_Sal" value="<%= rs.getString("emp_Bsic_Sal")%>" placeholder="Enter Basic Salary" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-25">
                                            <label for="emp_ETF">Enter EPF Amount</label>
                                        </div>
                                        <div class="col-75">
                                            <input type="number" name="emp_ETF" id="emp_ETF" value="<%= rs.getString("emp_ETF")%>" placeholder="Enter EPF Amount" required>
                                        </div>
                                    </div>


                                    <%
                                        }
                                    %>

                                    <button type="submit"  id="submit" name="submit" value="submit" class="button button3">Save</button>

                                    <div align="right">
                                        <p><a href="index.jsp" class="button button3">Click back</a></p>

                                    </div>

                                </form>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
