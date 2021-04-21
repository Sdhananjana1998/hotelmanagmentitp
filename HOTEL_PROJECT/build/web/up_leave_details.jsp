<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    if (request.getParameter("submit") != null) {

        String id = request.getParameter("id");
        String emp_Id = request.getParameter("emp_Id");
        String emp_Name = request.getParameter("emp_Name");
        String emp_Designation = request.getParameter("emp_Designation");
        String Date_From = request.getParameter("Date_From");
        String date_To = request.getParameter("date_To");
        String shift_type = request.getParameter("shift_type");
        String leave_Type = request.getParameter("leave_Type");
        String Reason = request.getParameter("Reason");

        Connection conn;
        PreparedStatement pst;
        ResultSet rs;

        Class.forName("com.mysql.jdbc.Driver");

        conn = DriverManager.getConnection("jdbc:mysql://localhost/richmond", "root", "");
        pst = conn.prepareStatement("update leave_details_form set emp_Id =?,emp_Name =?,emp_Designation =?,Date_From =?,date_To =?,shift_type  =?,leave_Type  =?,Reason  =? where id =?");
        pst.setString(1, emp_Id);
        pst.setString(2, emp_Name);
        pst.setString(3, emp_Designation);
        pst.setString(4, Date_From);
        pst.setString(5, date_To);
        pst.setString(6, shift_type);
        pst.setString(7, leave_Type);
        pst.setString(8, Reason);
        pst.setString(9, id);
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
    </head>
    <body class="overlay-scrollbar">



        <!-- main content -->
        <div class="wrapper">

            <div class="row">
                <div class="col-12 col-m-12 col-sm-12">
                    <div class="card">
                        <div class="card-header">
                            <h3>
                                Update Leave Details Form
                            </h3>
                        </div>
                        <div class="card-content">


                            <div class="container">
                                <form method="POST" action="#">

                                    <%
                                        Connection conn;
                                        PreparedStatement pst;
                                        ResultSet rs;

                                        Class.forName("com.mysql.jdbc.Driver");
                                        conn = DriverManager.getConnection("jdbc:mysql://localhost/richmond", "root", "");

                                        String id = request.getParameter("id");
                                        pst = conn.prepareStatement("select * from leave_details_form where id=?");
                                        pst.setString(1, id);
                                        rs = pst.executeQuery();

                                        while (rs.next()) {
                                    %>

                                    <div class="row">
                                        <div class="col-25">
                                            <label for="emp_Id">Enter Employee Id</label>
                                        </div>
                                        <div class="col-75">
                                            <input type="text" id="emp_Id" value="<%= rs.getString("emp_Id")%>" name="emp_Id" placeholder="Enter Employee Id..">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-25">
                                            <label for="emp_Name">Enter Emoplyee Name</label>
                                        </div>
                                        <div class="col-75">
                                            <input type="text" id="emp_Name" value="<%= rs.getString("emp_Name")%>" name="emp_Name" placeholder="Enter Emoplyee Name..">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-25">
                                            <label for="emp_Designation">Enter Designation</label>
                                        </div>
                                        <div class="col-75">
                                            <input type="text" id="emp_Designation" value="<%= rs.getString("emp_Designation")%>" name="emp_Designation" placeholder="Enter Designation">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-25">
                                            <label for="Date_From">Date From:</label>
                                        </div>
                                        <div class="col-75">
                                            <input type="date" id="Date_From" value="<%= rs.getString("Date_From")%>" name="Date_From">
                                        </div>
                                        <div class="col-25">
                                            <label for="date_To">Date To:</label>
                                        </div>
                                        <div class="col-75">
                                            <input type="date" id="date_To" value="<%= rs.getString("date_To")%>"  name="date_To">
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-25">
                                            <label for="shift_type">Shift Time</label>
                                        </div>
                                        <div class="col-75">
                                            <select id="shift_type" value="<%= rs.getString("shift_type")%>" name="shift_type">
                                                <option >Select Shift Type </option>
                                                <option value="canada">Canada</option>
                                                <option value="usa">USA</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-25">
                                            <label for="leave_Type">Type Of Leave</label>
                                        </div>
                                        <div class="col-75">
                                            <select id="leave_Type" value="<%= rs.getString("leave_Type")%>" name="leave_Type">
                                                <option >Select Leave</option>
                                                <option value="canada">Canada</option>
                                                <option value="usa">USA</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-25">
                                            <label for="Reason">Reason</label>
                                        </div>
                                        <div class="col-75">
                                            <textarea id="Reason" name="Reason" value="<%= rs.getString("Reason")%>" placeholder="Write something.." style="height:200px"></textarea>
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
        <!-- end main content -->


        <!-- import script -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
        <script src="js/index.js"></script>
        <!-- end import script -->
    </body>
</html>