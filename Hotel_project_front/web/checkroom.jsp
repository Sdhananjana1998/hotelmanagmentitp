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
 							<a href="#">Contact Us</a>
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


<form action="reservation.php" method="post">
 
  <div class="elem-group ">
    <label for="checkin-date">Check-in Date</label>
    <input type="date" id="checkin-date" name="checkin" required>
  </div>
  <div class="elem-group ">
    <label for="checkout-date">Check-out Date</label>
    <input type="date" id="checkout-date" name="checkout" required>
  </div>

 
  <button type="submit"class="button2">Check Availability</button>
</form>


<div class="cart1">
<div class="card">
  <img src="img/shop1.jpg" alt="Denim Jeans" style="width:100%">
  <h1>Room Category</h1>
  <p class="price">$19.99</p>
  <p>Add Room Details</p>
  <p><button>More Details</button></p>
</div>



<div class="card">
  <img src="img/shop1.jpg" alt="Denim Jeans" style="width:100%">
  <h1>Room Category</h1>
  <p class="price">$19.99</p>
  <p>Add Room Details</p>
  <p><button>More Details</button></p>
</div>


<div class="card">
  <img src="img/shop1.jpg" alt="Denim Jeans" style="width:100%">
  <h1>Room Category</h1>
  <p class="price">$19.99</p>
  <p>Add Room Details</p>
  <p><button class="button5">More Details</button></p>
</div>


<div class="card">
  <img src="img/shop1.jpg" alt="Denim Jeans" style="width:100%">
  <h1>Room Category</h1>
  <p class="price">$19.99</p>
  <p>Add Room Details</p>
  <p><button>More Details</button></p>
</div>
</div>

<div class="cart1">
<div class="card">
  <img src="img/shop1.jpg" alt="Denim Jeans" style="width:100%">
  <h1>Room Category</h1>
  <p class="price">$19.99</p>
  <p>Add Room Details</p>
  <p><button>More Details</button></p>
</div>



<div class="card">
  <img src="img/shop1.jpg" alt="Denim Jeans" style="width:100%">
  <h1>Room Category</h1>
  <p class="price">$19.99</p>
  <p>Add Room Details</p>
  <p><button>More Details</button></p>
</div>


<div class="card">
  <img src="img/shop1.jpg" alt="Denim Jeans" style="width:100%">
  <h1>Room Category</h1>
  <p class="price">$19.99</p>
  <p>Add Room Details</p>
  <p><button>More Details</button></p>
</div>


<div class="card">
  <img src="img/shop1.jpg" alt="Denim Jeans" style="width:100%">
  <h1>Room Category</h1>
  <p class="price">$19.99</p>
  <p>Add Room Details</p>
  <p><button >More Details</button></p>
</div>
</div>


<style>
  

  button {
  height: 50px;
  width: 950px;
  background: orange;
  border: none;
  color: white;
  font-size: 1.25em;
  font-family: 'Nanum Gothic';
  border-radius: 10px;
  cursor: pointer;
  margin-left: 200px;
  margin-right: 200px;
  margin-bottom: 50px;

}

button:hover {
  border: 2px solid black;
}
</style>


<script src="js/script.js"></script>
</body>
</html>



