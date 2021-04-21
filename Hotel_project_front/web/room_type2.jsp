<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>


<!DOCTYPE html>
<html>
    <head>
        <title>Hotel Richmond</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/style3.css">
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
                                    <a href="index.jsp"> Home</a>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="#"> Accommodation<i class="fa fa-angle-down"></i></a>
                                    <div class="sub-menu mega-menu mega-menu-column-4">
                                        <div class="list-item text-center">
                                            <a href="#">
                                                <img src="img/menu_image1.png" alt="new Product">
                                                <h4 class="title">Room Type</h4>
                                            </a>
                                        </div>
                                        <div class="list-item text-center">
                                            <a href="#">
                                                <img src="img/menu_image2.png" alt="new Product">
                                                <h4 class="title">Room Type</h4>
                                            </a>
                                        </div>
                                        <div class="list-item text-center">
                                            <a href="#">
                                                <img src="img/menu_image3.png" alt="new Product">
                                                <h4 class="title">Room Type</h4>
                                            </a>
                                        </div>
                                        <div class="list-item text-center">
                                            <a href="#">
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
                                    <a href="room_more_details.jsp">About US<i class="fas fa-angle-down"></i></a>
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


        <div class="container">
            <div class="card">
                <div class="head">Dummy Heading</div>
                <div class="text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nam eos reprehenderit neque,
                    saepe aliquid consequatur deleniti, inventore culpa maiores, explicabo ducimus placeat. Unde saepe,
                    eos assumenda maiores reprehenderit consectetur repellat.</div>
            </div>
            <div class="img">
                <img src="img/image1_1.png" alt="">
            </div>

        </div>


        <div class="grid-container">
            <div class="item1">
                <img src="img/image1_1.png"/>
            </div>
            <div class="item2">
                <img src="img/image2.png"/>
            </div>

            <div class="item3">
                <img src="img/image3.png"/>
            </div>
            <div class="item4">
                <img src="img/image4.png"/>
            </div>
        </div>








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



