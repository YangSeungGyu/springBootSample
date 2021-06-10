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

	<div id="chartDiv02" style="height:200xp;width:400px;">
		
	</div>
	
</body>
<script type="text/javascript">

	var test1DataSet = {
		
		label : 'test1',
		borderColor : '#FF0000',
		 backgroundColor: "#FF0000",
		borderWidth : 2,
		pointStyle : 'rect',
		data : [ 10, 5, 3, 3 ]
	};
	
	var test2DataSet = {
		
		label : 'test2',
		borderColor : '#FFE400',
		backgroundColor: "#FFE400",
		borderWidth : 2,
		pointStyle : 'rectRot',
		data : [ 5, 8, 2, 2 ]
	};

	
	$('#chartDiv02').html('<canvas id="myChart02"></canvas>');	
	var ctx = document.getElementById("myChart02").getContext('2d');	
	new Chart(ctx, {
		type : "line",
		data : {
			display: true,
			labels : ['11:30','12:00','13:30','14:00'],
			datasets : [test1DataSet, test2DataSet]
		},
		options : {				
			responsive: false
			,scales : {
				y :  {
					beginAtZero : true
				} 
			}
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