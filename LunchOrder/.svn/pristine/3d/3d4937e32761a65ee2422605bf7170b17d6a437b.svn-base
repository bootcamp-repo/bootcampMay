<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.Format"%>
<%@page contentType="text/html" import="java.util.*"%>
<!--  http://www.java-samples.com/jsp  -->
<html>

<head>

<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.4/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="https:////cdn.datatables.net/plug-ins/1.10.7/integration/bootstrap/3/dataTables.bootstrap.css" />
<script type="text/javascript"
	src="https:////code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript"
	src="https:////cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="https:////cdn.datatables.net/plug-ins/1.10.7/integration/bootstrap/3/dataTables.bootstrap.js"></script>
<style type="text/css">
body {
	font-size: 140%;
}
</style>

<script type="text/javascript">
$(document).ready(function() {
    $('#example').dataTable();
} );

</script>

	<title>Welcome | Admin</title>
	
<% 
	Format format = new SimpleDateFormat("EEEE, MMMM dd, YYYY  hh:mm a");
	String dateAndTime = format.format(new Date());
%>

</head>
<body>
	<p>&nbsp;</p>
	<div align="center">
		<table border="0" cellpadding="0" cellspacing="0" width="460"
			bgcolor="#EEFFCA">
			<tr>
			<tr>
				<td width="100%"><b>&nbsp;Today is :&nbsp; <font color="#FF0000"> <%= dateAndTime %>
					</font></b></td>
			</tr>
		</table>
	</div>

	<div class="form-group pull-right">
		<input type="text" class="search form-control"
			placeholder="What you looking for?">
	</div>
	<span class="counter pull-right"></span>
	<table id="example" class="table table-striped table-bordered"
		cellspacing="0" width="100%">
		<thead>
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
		</thead>

		<tfoot>
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
		</tfoot>

		<tbody>
		<c:if test="${not empty whichWich}">
			<c:forEach var="whichWich" items="${whichWich}">
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
			</c:forEach>
		</c:if>
</body>
</html>
