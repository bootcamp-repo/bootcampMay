<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<title>Order Details</title>
<link
	href='http://fonts.googleapis.com/css?family=Lato&subset=latin,latin-ext'
	rel='stylesheet' type='text/css'>
</head>

<!-- STYLE PROPERTIES SECTION -->

<style type="text/css">
body img {
	margin-left: 45em;
	margin-top: 1em;
}

/* UNIVERSAL TABLE ATTRIBUTES  */
table {
	font-family: "Lato", "sans-serif";
} /* added custom font-family  */
table caption {
	padding-bottom: 1em;
}

/* -----------------TABLE FIVE ATTRIBUTES-----------------  */
table.five {
	border-collapse: collapse;
	display: inline-block;
	margin-right: 3em;
}

table.five td {
	text-align: center;
	width: 16em;
	border: 0.15em #00ac24 dotted;
	padding: 1em;
	background-color: #b6ffc5;
}

table.five th {
	text-align: center;
	padding: 1em;
	border: 0.15em #00ac24 dotted;
	color: black;
}

table.five tr {
	height: 2em;
}
</style>
<body>
	<div align="center">
		<table class="five">
			<caption>
				<h1>Hi, Below is your order..</h1>
			</caption>
			<c:choose>
			 <c:when test="${chipotle.name != null}">
                    <c:if test="${not empty chipotle}">
			<tr>
				<th>Name</th>
				<th>Meat</th>
				<c:if test="${chipotle.taco_quantity != 0}">
					<th>Taco Quantity</th>
					<th>Tortilla</th>
				</c:if>
				<th>Rice</th>
				<th>Beans</th>
				<th>Toppings</th>
			</tr>
			<tr>
				<td>${chipotle.name}</td>
				<td>${chipotle.meat}</td>
				<c:if test="${chipotle.taco_quantity != 0}">
					<td>${chipotle.taco_quantity}</td>
					<td>${chipotle.tortilla}</td>
				</c:if>
				<td>${chipotle.rice}</td>
				<td>${chipotle.beans}</td>
				<td>${chipotle.toppings}</td>
			</tr>
		</c:if>
	</c:when>
	</c:choose>
	<c:choose>
	<c:when test="${whichWich.name != null}">
		<c:if test="${not empty whichWich}">
			<tr>
                <th>Name</th>
                <th>Meat</th>
                <th>Which Way Which?</th>
                <th>Cheese</th>
                <th>Mustard</th>
                <th>Mayo</th>
                <th>Spreads & Sauces</th>
                <th>Dressings</th>
                <th>Onions</th>
                <th>Veggies & More</th>
                <th>Oil & Spices</th>
			</tr>
			<tr>
                <td>${whichWich.name}</td>
                <td>${whichWich.meat}</td>
                <td>${whichWich.whichWay}</td>
                <td>${whichWich.cheese}</td>
                <td>${whichWich.mustard}</td>
                <td>${whichWich.mayo}</td>
                <td>${whichWich.spreadNSause}</td>
                <td>${whichWich.dressings}</td>
                <td>${whichWich.onion}</td>
                <td>${whichWich.veggiesnMore}</td>
                <td>${whichWich.oilnSpices}</td>
			</tr>
		</c:if>
		</c:when>
	</c:choose>
		</table>
	</div>
</body>
</html>


