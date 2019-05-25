<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
		<div id="divStsMsgItem"><% out.println(rudFeedback); %></div>
			<% out.println(itemGrid); %>

	</form><br>

</body>
</html>