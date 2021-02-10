<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script> 
var start_year="2021";
var today = new Date();
var today_year= today.getFullYear(); 
var index=0; 
	for(var y=start_year; y<=today_year; y++){
		document.getElementById('select_year').options[index] = new Option(y, y); 
		index++; 
	} 
	index=0; 
	for(var m=1; m<=12; m++){ 
		document.getElementById('select_month').options[index] = new Option(m, m); 
		index++; 
	} 
	lastday(); 
	
	function lastday(){
	var Year=document.getElementById('select_year').value; 
	var Month=document.getElementById('select_month').value; 
	var day=new Date(new Date(Year,Month,1)-86400000).getDate(); 
	var dayindex_len=document.getElementById('select_day').length; 
	if(day>dayindex_len){ 
		for(var i=(dayindex_len+1); i<=day; i++){ 
			document.getElementById('select_day').options[i-1] = new Option(i, i); 
		} 
	} else if(day<dayindex_len){ 
		for(var i=dayindex_len; i>=day; i--){ 
			document.getElementById('select_day').options[i]=null; 
			} 
		} 
	} 
</script>

</head>
<body>
	Year : <select id="select_year" onchange="javascript:lastday();"></select><br /> 
	Month : <select id="select_month" onchange="javascript:lastday();"></select><br /> 
	Day : <select id="select_day"></select><br /><br />
</body>
</html>