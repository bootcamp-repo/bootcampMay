<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@ page isELIgnored="false" %>
    <meta charset="utf-8" />
    <title>Bootcamp Java | Lunch Menu</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.4/css/bootstrap.min.css" />
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-switch/3.3.2/css/bootstrap3/bootstrap-switch.css"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-switch/3.3.2/js/bootstrap-switch.js"></script>
	<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.0/css/bootstrap-toggle.min.css" rel="stylesheet">
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.0/js/bootstrap-toggle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <link href="<c:url value="/resources/dist/css/bootstrap-select.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/dist/css/build.css" />" rel="stylesheet">
	<script src="<c:url value="/resources/dist/js/bootstrap-select.js" />"></script>
	<script src="<c:url value="/resources/dist/js/checkbox.js" />"></script>

</head>
<body>
<a href="admin" class="btn btn-info btn-lg" style="float: right;">Admin</a>
	<div class="container">
		<h2 align="center">WhichWich Order</h2><br>
		<form class="form-horizontal" role="form" method="post" action="whichWich.do">
			<div class="form-group">
				<label class="col-sm-2 control-label">Your Name</label>
				<div class="col-sm-6">
					<input class="form-control" id="focusedInput" type="text" placeholder="Enter your name..." required="required" name="name">
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-2 control-label">Meat</label>
				<div class="col-sm-6">
					<select class="selectpicker" data-style="btn-success" name="meat">
						<option value="Plain Chicken">Plain Chicken</option>
					<option value="Buffalo Chicken">Buffalo Chicken</option>
					<option value="Chicken Pesto">Chicken Pesto</option>
					<option value="Chicken Cordon Bleu (Chicken & Ham)">Chicken Cordon Bleu (Chicken & Ham)</option>
					<option value="Chicken Salad">Chicken Salad</option>
					<option value="Roast Beef">Roast Beef</option>
					<option value="Beef Cheese steak">Beef Cheese steak</option>
					<option value="French Dip Beef">French Dip Beef</option>
					<option value="Corned Beef">Corned Beef</option>
					<option value="Reuben (Corned Beef, Sauerkraut & 1000 Island)">Reuben (Corned Beef, Sauerkraut & 1000 Island)</option>
					<option value="Tuna">Tuna</option>
					<option value="Crab Salad">Crab Salad</option>
					<option value="Crab &amp; Artichoke">Crab &amp; Artichoke</option>
					<option value="Black Bean Patty (Vegetarian)">Black Bean Patty (Vegetarian)</option>
					<option value="Hummus (Vegetarian)">Hummus (Vegetarian)</option>
					<option value="Tomato & Avocado (Vegetarian)&nbsp;">Tomato & Avocado (Vegetarian)&nbsp;</option>
					<option value="Artichoke Hearts (Vegetarian)">Artichoke	Hearts (Vegetarian)</option>
					<option value="Meatball (Italian)">Meatball (Italian)</option>
					<option value="Chicken Parmesan (Italian)">Chicken Parmesan (Italian)</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">Bread</label>
				<div class="col-sm-6">
					<select class="selectpicker" data-style="btn-success" name="whichWay">
						<option value="Wheat Bread">Wheat Bread</option>
						<option value="White Bread">White Bread</option>
						<option value="Lettuce Wrap">Lettuce Wrap</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">Cheese</label>
				<div class="col-sm-6">
					<select class="selectpicker" data-style="btn-info" name="cheese">
					<option value="None">None</option>
					<option value="American">American</option>
					<option value="Swiss">Swiss</option>
					<option value="Cheddar">Cheddar</option>
					<option value="Provolone">Provolone</option>
					<option value="Pepper Jack">Pepper Jack</option>
					<option value="Mozzarella">Mozzarella</option>
					<option value="Cheez Whiz">Cheez Whiz &reg;</option>
					<option value="Blue">Blue</option>
					<option value="Feta">Feta</option>
					<option value="Parmesan">Parmesan</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">Extra</label>
				<div class="col-sm-6">
					<select class="selectpicker" data-style="btn-success">
						<option>None</option>
						<option>Hummus</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">Customize</label>
				<div class="col-sm-6">
					<button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#customize">Customize</button>
					<div id="customize" hidden="">
						<div class="container" style="margin-top: 20px;">
							<div class="checkbox checkbox-primary">
								<input id="checkbox" type="checkbox">
							</div>

							<div class="row">
								<div class="col-md-4">
									<fieldset>
										<legend> Customize: DRESSINGS </legend>
										<p>Please Select Dressings</p>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="none" class="styled" type="checkbox" name="none">
											<label for="checkbox7"> None</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox7" class="dressings" type="checkbox" name="mayo" value="Regular Mayo">
											<label for="checkbox7"> Mayo: Regular</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="dressings" type="checkbox" name="mayo" value="Light Mayo">
											<label for="checkbox8"> Mayo: Light </label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox7" class="dressings" type="checkbox" name="mayo" value="Horseradish Mayo">
											<label for="checkbox7"> Mayo: Horseradish</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="dressings" type="checkbox" name="mayo" value="Spicy Mayo">
											<label for="checkbox8"> Mayo: Spicy </label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox7" class="dressings" type="checkbox" name="mustard" value="Yello Mustard">
											<label for="checkbox7"> Mustard: Yellow</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="dressings" type="checkbox" name="mustard" value="Dijon Mustard">
											<label for="checkbox8"> Mustard: Dijon </label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox7" class="dressings" type="checkbox" name="mustard" value="Honey Mustard">
											<label for="checkbox7"> Mustard: Honey</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="dressings" type="checkbox" name="mustard" value="Deli Mustard">
											<label for="checkbox8"> Mustard: Deli </label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="dressings" type="checkbox" name="spreadNSause" value="Buffalo Sauce">
											<label for="checkbox8"> Buffalo Sauce </label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox7" class="dressings" type="checkbox" name="spreadNSause" value="BBQ Sauce">
											<label for="checkbox7"> BBQ Sauce</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="dressings" type="checkbox" name="spreadNSause" value="Marinara">
											<label for="checkbox8"> Marinara </label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox7" class="dressings" type="checkbox" name="spreadNSause" value="Pesto">
											<label for="checkbox7"> Pesto</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="dressings" type="checkbox" name="spreadNSause" value="Siracha">
											<label for="checkbox8"> Siracha </label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox7" class="dressings" type="checkbox" name="dressings" value="Ranch">
											<label for="checkbox7"> Ranch</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="dressings" type="checkbox" name="dressings" value="Spicy Ranch">
											<label for="checkbox8"> Spicy Ranch </label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox7" class="dressings" type="checkbox" name="dressings" value="Fat Free Itilian">
											<label for="checkbox7"> Fat Free Italian</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="dressings" type="checkbox" name="dressings" value="Balsamic Vinaigrette">
											<label for="checkbox8"> Balsamic Vinaigrette </label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="dressings" type="checkbox" name="dressings" value="1000 Island">
											<label for="checkbox8"> 1000 Island </label>
										</div>
									</fieldset>
								</div>
								<div class="col-md-4">
									<fieldset>
										<legend> Customize: VEGGIES </legend>
										<p>Please Select Veggies</p>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="noneV" class="styled" type="checkbox" name="veggiesnMore" value="None">
											<label for="none">None</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="veggies" type="checkbox" name="veggiesnMore" value="Lettuce">
											<label for="checkbox8">Lettuce</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="veggies" type="checkbox" name="veggiesnMore" value="Spinach">
											<label for="checkbox8">Spinach</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="veggies" type="checkbox" name="veggiesnMore" value="Tomatoes">
											<label for="checkbox8">Tomatoes</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="veggies" type="checkbox" name="veggiesnMore" value="Pickles">
											<label for="checkbox8">Pickles</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="veggies" type="checkbox" name="onion" value="Caramelized">
											<label for="checkbox8">Onions: Caramelized</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="veggies" type="checkbox" name="onion" value="Crispy Strings">
											<label for="checkbox8">Onions: Crispy Strings</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="veggies" type="checkbox" name="onion" value="Red">
											<label for="checkbox8">Onions: Red</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="veggies" type="checkbox" name="veggiesnMore" value=" Banana Peppers">
											<label for="checkbox8">Banana Peppers</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="veggies" type="checkbox" name="veggiesnMore" value="Bell Peppers">
											<label for="checkbox8">Bell Peppers</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="veggies" type="checkbox" name="veggiesnMore" value="Black Olives">
											<label for="checkbox8">Black Olives</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="veggies" type="checkbox" name="veggiesnMore" value="Cucumber">
											<label for="checkbox8">Cucumbers</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="veggies" type="checkbox" name="veggiesnMore" value="Jalapenos">
											<label for="checkbox8">Jalapenos</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="veggies" type="checkbox" name="veggiesnMore" value="Olive Salad">
											<label for="checkbox8">Olive Salad</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="veggies" type="checkbox" name="spreadNSause" value="Hot Pepper Mix">
											<label for="checkbox8">Hot Pepper Mix</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="veggies" type="checkbox" name="spreadNSause" value="Sweet Chili">
											<label for="checkbox8">Sweet Chili</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="veggies" type="checkbox" name="veggiesnMore" value="Coleslaw">
											<label for="checkbox8">Coleslaw</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="veggies" type="checkbox" name="veggiesnMore" value="House Chips">
											<label for="checkbox8">House Chips (Wich)</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="veggies" type="checkbox" name="veggiesnMore" value="Dried Cranberries">
											<label for="checkbox8">Dried Cranberries</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="veggies" type="checkbox" name="veggiesnMore" value="Candied Walnuts">
											<label for="checkbox8">Candied Walnuts</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="veggies" type="checkbox" name="veggiesnMore" value="Sauerkraut">
											<label for="checkbox8">Sauerkraut</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="veggies" type="checkbox" name="veggiesnMore" value="Mushrooms">
											<label for="checkbox8">Mushrooms</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="veggies" type="checkbox" name="veggiesnMore" value="Pineapple">
											<label for="checkbox8">Pineapple</label>
										</div>
									</fieldset>
								</div>
								<div class="col-md-4">
									<fieldset>
										<legend> Customize: OILS & SPICES </legend>
										<p>Please Select Oils And Spices</p>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="noneO" class="noneO" type="checkbox" name="oilnSpices" value="None"> 
											<label for="none">None</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="oilSpics" type="checkbox" name="oilnSpices" value="Oil"> 
											<label for="checkbox8">Oil</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="oilSpics" type="checkbox" name="oilnSpices" value="Vinegar">
											<label for="checkbox8">Vinegar</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="oilSpics" type="checkbox" name="oilnSpices" value="Salt"> 
											<label for="checkbox8">Salt</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="oilSpics" type="checkbox" name="oilnSpices" value="Pepper">
											<label for="checkbox8">Pepper</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="oilSpics" type="checkbox" name="oilnSpices" value="Crushed Red Pepper">
											<label for="checkbox8">Crushed Red Pepper</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="oilSpics" type="checkbox" name="oilnSpices" value="Garlic">
											<label for="checkbox8">Garlic</label>
										</div>
										<div class="checkbox checkbox-info checkbox-circle">
											<input id="checkbox8" class="oilSpics" type="checkbox" name="oilnSpices" value="Oregano">
											<label for="checkbox8">Oregano</label>
										</div>
									</fieldset>
								</div>
							</div>
						</div>
					</div>
				</div>
				</div>
				<center>
				<br><br>
				<input type="submit" class="btn btn-info" value="Submit Order">
				</center>
				</form>
			</div>
</body>
</html>