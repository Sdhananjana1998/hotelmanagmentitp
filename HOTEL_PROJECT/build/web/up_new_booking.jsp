<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    if (request.getParameter("submit") != null) {

        String id = request.getParameter("id");
        String cust_name = request.getParameter("cust_name");
        String cust_email = request.getParameter("cust_email");
        String cust_phone = request.getParameter("cust_phone");
        String checkin_date = request.getParameter("checkin_date");
        String checkout_date = request.getParameter("checkout_date");
        String room_preference = request.getParameter("room_preference");
        String adult = request.getParameter("adult");;
        Connection conn;
        PreparedStatement pst;
        ResultSet rs;

        Class.forName("com.mysql.jdbc.Driver");

        conn = DriverManager.getConnection("jdbc:mysql://localhost/richmond", "root", "");
        pst = conn.prepareStatement("update cust_new_book set cust_name =?,cust_email =?,cust_phone =?,checkin_date =?,checkout_date =?,room_preference =?,adult =? where id =?");

        pst.setString(1, cust_name);
        pst.setString(2, cust_email);
        pst.setString(3, cust_phone);
        pst.setString(4, checkin_date);
        pst.setString(5, checkout_date);
        pst.setString(6, room_preference);
        pst.setString(7, adult);
        pst.setString(8, id);
        pst.executeUpdate();
%>
<script>
    alert("Record updated!");
</script>

<%
    }
%>
<style>
    input[type=email],input[type=tel], select, textarea {
        width: 100%;
        padding: 12px;
        border: 1px solid #ccc;
        border-radius: 4px;
        resize: vertical

    }
</style>
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

                        </div>
                        <div class="card-content">


                            <div class="container">
                                <form  method="POST" action="#">
                                    <div class="elem-group">
                                        <h1>update New Booking Details</h1>
                                         <%
                                        Connection conn;
                                        PreparedStatement pst;
                                        ResultSet rs;

                                        Class.forName("com.mysql.jdbc.Driver");
                                        conn = DriverManager.getConnection("jdbc:mysql://localhost/richmond", "root", "");

                                        String id = request.getParameter("id");
                                        pst = conn.prepareStatement("select * from cust_new_book where id=?");
                                        pst.setString(1, id);
                                        rs = pst.executeQuery();

                                        while (rs.next()) {
                                    %>
                                        <label for="cust_name">Your Name</label>
                                        <input type="text" id="cust_name"value="<%= rs.getString("cust_name")%>"  name="cust_name" placeholder="John Doe" pattern=[A-Z\sa-z]{3,20} required>
                                    </div>
                                    <div class="elem-group">
                                        <label for="cust_email">Your E-mail</label>
                                        <input type="email" id="cust_email"value="<%= rs.getString("cust_email")%>" name="cust_email" placeholder="john.doe@email.com" required>
                                    </div>
                                    <div class="elem-group">
                                        <label for="cust_phone">Your Phone</label>
                                        <input type="tel" id="cust_phone" value="<%= rs.getString("cust_phone")%>" name="cust_phone" placeholder="498-348-3872" pattern=(\d{3})-?\s?(\d{3})-?\s?(\d{4}) required>
                                    </div>

                                    <div class="elem-group ">
                                        <label for="checkin_date">Check-in Date</label>
                                        <input type="date" id="checkin_date" value="<%= rs.getString("checkin_date")%>" name="checkin_date" required>
                                    </div>
                                    <div class="elem-group ">
                                        <label for="checkout_date">Check-out Date</label>
                                        <input type="date" id="checkout_date"  value="<%= rs.getString("checkout_date")%>" name="checkout_date" required>
                                    </div>
                                    <div class="elem-group">
                                        <label for="room_preference">Select Room Preference</label>
                                        <select id="room_preference" value="<%= rs.getString("room_preference")%>" name="room_preference" required>
                                            <option value="">Choose a Room from the List</option>
                                            <option value="connecting">Connecting</option>
                                            <option value="adjoining">Adjoining</option>
                                            <option value="adjacent">Adjacent</option>
                                        </select>
                                    </div>
                                    <div class="elem-group ">
                                        <label for="adult">Member of Guests</label>
                                        <input type="number" id="adult" value="<%= rs.getString("adult")%>" name="adult" placeholder="2" min="1" required>
                                    </div>
                                            <%
                                        }
                                    %>

                                    <button type="submit"  id="submit"  name="submit" value="submit" class="button button3">Save</button>

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
