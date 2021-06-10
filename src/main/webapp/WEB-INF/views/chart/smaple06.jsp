<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="../chart.js-3.1.0/package/dist/chart.js"></script>		
	<title>Insert title here</title>
</head>
<style>
	.testLgend{background-image: url(../img/test_legend.png)}
	
</style>
<body>

	<div id="chartDiv06" style="height:200xp;width:400px;">
		
	</div>
	
</body>
<script type="text/javascript">

	var test1DataSet = {		
		backgroundColor: ["#6799FF","#F29661"]
		,data : [10,20]
	};
	
	$('#chartDiv06').html('<canvas id="myChart06"></canvas>');	
	var ctx = document.getElementById("myChart06").getContext('2d');	
	new Chart(ctx, {
		type : "pie",
		data : {
			display: true,
			labels : ['test1','test2'],
			datasets :[test1DataSet] 
		},
		options : {				
			responsive: false
			,plugins: {
				legend: {
					display: true,
					 useLineStyle: true,
					usePointStyle: true,
					position : 'bottom'
					
				}
			      
		    }
		}
	});
</script>


</html>