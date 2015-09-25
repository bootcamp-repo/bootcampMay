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
    <link href="<c:url value="/resources/dist/css/chipotle.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/dist/css/build.css" />" rel="stylesheet">
	<script src="<c:url value="/resources/dist/js/bootstrap-select.js" />"></script>
	<script src="<c:url value="/resources/dist/js/checkbox.js" />"></script>

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>

<a href="admin" class="btn btn-info btn-lg" style="float: right;">Admin</a>
	<div class="container">
		<h2 align="center">Chipotle Order</h2><br>
		<form class="form-horizontal" role="form" method="post" action="chipotle.do">
			<div class="form-group">
				<label class="col-sm-2 control-label">Your Name</label>
				<div class="col-sm-6">
					<input class="form-control" id="focusedInput" type="text" placeholder="Enter your name..." required="required" name="name">
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-2 control-label">Select one entrée</label>
				<div class="col-sm-6">
					<select class="selectpicker" data-style="btn-success" name="meat" onchange="java_script_:show(this.options[this.selectedIndex].value)">
						<option value="Burrito">Burrito</option>
						<option value="Burrito Bowl">Burrito Bowl</option>
						<option value="Tacos" id="taco">Tacos</option>
						<option value="Salad" id ="salad">Salad</option>
					</select>
				</div>
			</div>

<!-- 			<div id='hiddenDiv'>
				<label>Are you sure you want to eat the apple?</label> <select
					name="AppleQuestion">
					<option value='Yes'>Yes</option>
					<option value='No'>No</option>
				</select>
			</div> -->

			
			<div class="form-group" id="hiddenDiv" hidden="">
				<label class="col-sm-2 control-label">Choose a Quantity</label>
				<div class="col-sm-6">
					<select class="selectpicker" data-style="btn-success" name="taco_quantity">
						<option selected="selected">0</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
					</select>
				</div>
				
				<label class="col-sm-2 control-label">Choose a Tortilla</label>
				<div class="col-sm-2">
					<select class="selectpicker" data-style="btn-success" name="tortilla"> 
						<option selected="selected">None</option>
						<option>Soft Corn Tortilla</option>
						<option>Soft Flour Tortilla</option>
						<option>Crispy Corn Tortilla</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-6">
						<div class="container" style="margin-top: 20px;">

							<div class="row">
								<div class="col-md-3">
									<fieldset>
										<legend> Choose: PROTEIN </legend>
										<p>Please Choose Protein</p>
									<div>
										<label> 
											<input name="option1" type="radio" value="Chicken"> 
											<span>Chicken</span>
										</label>
									</div>
									<div>
										<label> 
											<input name="option1" type="radio" value="Steak"> 
											<span>Steak</span>
										</label>
									</div>
									<div>
										<label> 
											<input name="option1" type="radio" value="Barbacoa"> 
											<span>Barbacoa</span>
										</label>
									</div>
									<div>
										<label> 
											<input name="option1" type="radio" value="Sofritas"> 
											<span>Sofritas</span>
										</label>
									</div>
									<div>
										<label> 
											<input name="option1" type="radio" value="Veggie"> 
											<span>Veggie</span>
										</label>
									</div>
									</fieldset>
								</div>
								<div class="col-md-2">
									<fieldset>
										<legend> Choose: Rice </legend>
										<p>Please Choose Rice</p>
										<div>
										<label> 
											<input name="Rice" type="radio" value="No Rice"> 
											<span>No Rice</span>
										</label>
									</div>
									<div>
										<label> 
											<input name="Rice" type="radio" value="White Rice"> 
											<span>White Rice</span>
										</label>
									</div>
									<div>
										<label> 
											<input name="Rice" type="radio" value="Brown Rice"> 
											<span>Brown Rice</span>
										</label>
									</div>
									</fieldset>
								</div>
								
								<div class="col-md-3">
									<fieldset>
										<legend> Choose: Beans </legend>
										<p>Please Choose Beans</p>
										<div>
										<label> 
											<input name="Beans" type="radio" value="No Beans"> 
											<span>No Beans</span>
										</label>
									</div>
									<div>
										<label> 
											<input name="Beans" type="radio" value="Black Beans"> 
											<span>Black Beans</span>
										</label>
									</div>
									<div>
										<label> 
											<input name="Beans" type="radio" value="Pinto Beans"> 
											<span>Pinto Beans</span>
										</label>
									</div>
									</fieldset>
								</div>
								<div class="col-md-4" >
									<fieldset>
									<legend> Choose: Toppings </legend>
										<p>Please Select Toppings</p>
										<div>
										<label> 
											<input name="toppings" type="checkbox" value="Fajita Veggies"> 
											<span>Fajita Veggies</span>
										</label>
									</div>
									<div>
										<label> 
											<input name="toppings" type="checkbox" value="Fresh Tomato Salsa (mild)"> 
											<span>Fresh Tomato Salsa (mild)</span>
										</label>
									</div>
									<div>
										<label> 
											<input name="toppings" type="checkbox" value="Roasted Chill-Corn Slasa (medium)"> 
											<span>Roasted Chill-Corn Slasa (medium)</span>
										</label>
									</div>
									<div>
										<label> 
											<input name="toppings" type="checkbox" value="Tomatillo-Green Chili Salsa (medium)"> 
											<span>Tomatillo-Green Chili Salsa (medium)</span>
										</label>
									</div>
									<div>
										<label> 
											<input name="toppings" type="checkbox" value="Tomatillo-Red Chili Salsa (hot)"> 
											<span>Tomatillo-Red Chili Salsa (hot)</span>
										</label>
									<div>
										<label> 
											<input name="toppings" type="checkbox" value="Sour Cream"> 
											<span>Sour Cream</span>
										</label>
									</div>
									<div>
										<label> 
											<input name="toppings" type="checkbox" value="Cheese"> 
											<span>Cheese</span>
										</label>
										</div>
									<div>
										<label> 
											<input name="toppings" type="checkbox" value="Lettuce"> 
											<span>Lettuce</span>
										</label>
									</div>
									<div id="hiddenSalad" hidden="">
										<label> 
											<input name="toppings" type="checkbox" value="Chipotle-Honey Vinaigrette Dressing" > 
											<span>Chipotle-Honey Vinaigrette Dressing</span>
										</label>
									</div>
									</div>
									</fieldset>
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