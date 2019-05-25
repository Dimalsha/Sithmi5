<%@ page import="com.models.Item" %>
<%@ page import = "javax.sql.*" %>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	Item item = new Item();
	String itemsGrid = "";
	String rudFeedback = "";
	
	if (request.getParameter("hideMode") != null && request.getParameter("hideMode").equalsIgnoreCase("save"))
	{
		rudFeedback = item.saveAnItem(request.getParameter("txtItemName"), request.getParameter("txtItemDesc"));
	}
	if (request.getParameter("hideMode") != null && request.getParameter("hideMode").equalsIgnoreCase("update"))
	{
		rudFeedback = item.updateAnItem(request.getParameter("hidID"), request.getParameter("txtItemName"), request.getParameter("textItemDesc"));
	}
	if (request.getParameter("hideMode") != null && request.getParameter("hideMode").equalsIgnoreCase("remove"))
	{
		rudFeedback = item.deleteAnItem(request.getParameter("hidID"));
	}
	
	itemsGrid = item.getItems();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Items</title>
<script type="text/javascript" src=Controllers/jQuery.js></script>
<script type="text/javascript" src=Controllers/controllerMain.js></script>
</head>
<body>

	<form id="formItem" action="item.jsp" method="post">
		<input id="hidMode" name="hidMode" type="hidden" value="save"> 
		<input id="hidID" name="hidID" type="hidden" value="0">
		Item Name: <input id="txtItemName" name="txtItemName" type="text"> <br>
		Item Description: <input id="txtItemDesc" name="txtItemDesc" type="text"> <br>
		<input id="btnSave" name="btnSave" type="button" value="Save"><br>
		<div id="divStsMsgItem"><% out.println("rudFeedback"); %></div>
			<% out.println("itemGrid"); %>

	</form><br>
	
	<form id="formItem" action="item.jsp" method="put">
		<input id="hidMode" name="hidMode" type="hidden" value="update"> 
		<input id="hidID" name="hidID" type="hidden" value="0">
		Item Name: <input id="txtItemName" name="txtItemName" type="text"> <br>
		Item Description: <input id="txtItemDesc" name="txtItemDesc" type="text"> <br>
		<input id="btnSave" name="btnSave" type="button" value="Save"><br>
		<div id="divStsMsgItem"><% out.println("rudFeedback"); %></div>
			<% out.println("itemGrid"); %>

	</form><br>

</body>
</html>