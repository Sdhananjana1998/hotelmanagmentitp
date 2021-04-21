<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>


<!DOCTYPE html>
<html>
    <head>
        <title>Hotel Richmond</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>

        <!-- header start -->
        <header class="header">
            <div class="container1">
                <div class="row v-center">
                    <div class="header-item item-left">
                        <div class="logo">
                            <a href="#">Hotel*Richmond</a>
                        </div>
                    </div>
                    <!-- menu start here -->
                    <div class="header-item item-center">
                        <div class="menu-overlay">
                        </div>
                        <nav class="menu">
                            <div class="mobile-menu-head">
                                <div class="go-back"><i class="fa fa-angle-left"></i></div>
                                <div class="current-menu-title"></div>
                                <div class="mobile-menu-close">&times;</div>
                            </div>
                            <ul class="menu-main">
                                <li>
                                    <a href="booking.jsp"> Home</a>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="#"> Accommodation<i class="fa fa-angle-down"></i></a>
                                    <div class="sub-menu mega-menu mega-menu-column-4">
                                        <div class="list-item text-center">
                                            <a href="room_type1.jsp">
                                                <img src="img/menu_image1.png" alt="new Product">
                                                <h4 class="title">Room Type</h4>
                                            </a>
                                        </div>
                                        <div class="list-item text-center">
                                            <a href="room_type2.jsp">
                                                <img src="img/menu_image2.png" alt="new Product">
                                                <h4 class="title">Room Type</h4>
                                            </a>
                                        </div>
                                        <div class="list-item text-center">
                                            <a href="room_type3.jsp">
                                                <img src="img/menu_image3.png" alt="new Product">
                                                <h4 class="title">Room Type</h4>
                                            </a>
                                        </div>
                                        <div class="list-item text-center">
                                            <a href="room_type4.jsp">
                                                <img src="img/menu_image4.png" alt="new Product">
                                                <h4 class="title">Room Type</h4>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="#">Foof Menu <i class="fa fa-angle-down"></i></a>
                                    <div class="sub-menu mega-menu mega-menu-column-4">
                                        <div class="list-item">
                                            <h4 class="title">Add Details</h4>
                                            <ul>
                                                <li><a href="#">Add Details</a></li>
                                                <li><a href="#">Add Details List</a></li>
                                                <li><a href="#">Add Details List</a></li>
                                                <li><a href="#">Add Details List</a></li>
                                                <li><a href="#">Add Details List</a></li>
                                            </ul>
                                            <h4 class="title">Add Details</h4>
                                            <ul>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details </a></li>
                                            </ul>
                                        </div>
                                        <div class="list-item">
                                            <h4 class="title">Add Details's Fashion</h4>
                                            <ul>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details</a></li>
                                            </ul>
                                            <h4 class="title">Furniture</h4>
                                            <ul>
                                                <li><a href="#">Add Details</a></li>
                                                <li><a href="#">Add Details</a></li>
                                                <li><a href="#">Add Details</a></li>
                                                <li><a href="#">Add Details</a></li>
                                            </ul>
                                        </div>
                                        <div class="list-item">
                                            <h4 class="title">Add Details</h4>
                                            <ul>
                                                <li><a href="#">Add Details</a></li>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details </a></li>
                                                <li><a href="#">Add Details </a></li>
                                            </ul>
                                        </div>
                                        <div class="list-item">
                                            <img src="img/menu_food1.png" alt="shop">
                                        </div>
                                    </div>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="#">Events <i class="fas fa-angle-down"></i></a>
                                    <div class="sub-menu single-column-menu">
                                        <ul>
                                            <li><a href="#">Add Details </a></li>
                                            <li><a href="#">Add Details </a></li>
                                            <li><a href="#">Add Details  </a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="#">About US<i class="fas fa-angle-down"></i></a>
                                    <div class="sub-menu single-column-menu">
                                        <ul>
                                            <li><a href="#">Add Details</a></li>
                                            <li><a href="#">Add Details</a></li>
                                            <li><a href="#">Add Details</a></li>
                                            <li><a href="#">Add Details Page</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a href="checkroom.jsp">Contact Us</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <!-- menu end here -->
                    <div class="header-item item-right">

                        <!-- mobile menu trigger -->
                        <div class="mobile-menu-trigger">
                            <span></span>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <div class="w3-content w3-section" style="max-width:100%">

            <img class="mySlides" src="img/slider_img1.png" style="width:100%">
            <img class="mySlides" src="img/slider_img2.png" style="width:100%">
            <img class="mySlides" src="img/slider_img3.png" style="width:100%">
            <img class="mySlides" src="img/slider_img4.png" style="width:100%">
            <img class="mySlides" src="img/slider_img5.png" style="width:100%">


        </div>


        <%

            Connection conn;
            PreparedStatement pst;
            ResultSet rs;

            Class.forName("com.mysql.jdbc.Driver");

            conn = DriverManager.getConnection("jdbc:mysql://localhost/richmond", "root", "");

            String query = "select * from add_new_room";
            Statement st = conn.createStatement();

            rs = st.executeQuery(query);

            while (rs.next()) {

                String id = rs.getString("room_id");
        %>  


        <div class="card">
            <img src="img/room_page_image1.png" alt="img" style="width:100%">
            <h1><%=rs.getString("r_Category")%></h1>
            <p class="price">$<%=rs.getString("r_Price")%></p>
            <p><%=rs.getString("r_Description")%></p>
            <p><button onclick="location.href='room_more_details.jsp'" type="button" class="button4">More Details</button></p>
        </div>
        <%
            }

        %>




        <script>
            var myIndex = 0;
            carousel();

            function carousel() {
                var i;
                var x = document.getElementsByClassName("mySlides");
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
                myIndex++;
                if (myIndex > x.length) {
                    myIndex = 1
                }
                x[myIndex - 1].style.display = "block";
                setTimeout(carousel, 2000); // Change image every 2 seconds
            }
        </script>
        <script src="js/script.js"></script>
    </body>
</html>



