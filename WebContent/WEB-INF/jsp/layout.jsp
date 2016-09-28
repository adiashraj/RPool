<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title" ignore="true" /></title>
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/custom_style.css" />
<style> 
.error {
	color: #ff0000;
	font-weight: bold;
}
</style>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
</head>

<script>
	$(function() {
		$("#releaseDate").datepicker();
		$("#dateOfJoining").datepicker();
	});
</script>



</head>
<body>
		
		<tiles:insertAttribute name="header" />
		<div class="nav-fixed"><tiles:insertAttribute name="menu" /></div>
		<div class="middle-body">
		
		<tiles:insertAttribute name="body" /></div>
    	<div style="clear:both"><tiles:insertAttribute name="footer" /></div>

</body>

<%-- <body>
<table border="1" cellpadding="2" cellspacing="2">
	<tr>
		<td height="10" colspan="2"><tiles:insertAttribute name="header" />
		</td>
	</tr>
	<tr>
		<td height="250"><tiles:insertAttribute name="menu" /></td>
		<td width="350"><tiles:insertAttribute name="body" /></td>
	</tr>
	<tr>
		<td height="30" colspan="2"><tiles:insertAttribute name="footer" />
		</td>
	</tr>
</table>
</body> --%>
</html>
