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

	<div id="chartDiv04" style="height:200xp;width:400px;">
		
	</div>
	
</body>
<script type="text/javascript">

	var test1DataSet = {
		
		label : 'test1',
		borderColor : '#6799FF',
		 backgroundColor: "#6799FF",
		borderWidth : 2,
		pointStyle : 'rect',
		data : [ 10, 5]
	};
	
	var test2DataSet = {
		
		label : 'test2',
		borderColor : '#F29661',
		backgroundColor: "#F29661",
		borderWidth : 2,
		pointStyle : 'rectRot',
		data : [ 5, 8 ]
	};

	
	$('#chartDiv04').html('<canvas id="myChart04"></canvas>');	
	var ctx = document.getElementById("myChart04").getContext('2d');	
	new Chart(ctx, {
		type : "bar",
		data : {
			display: true,
			labels : ['test1','test2'],
			datasets : [test1DataSet, test2DataSet]
		},
		options : {				
			responsive: false,
			scales : {
				y : {
					beginAtZero : true					
				},
				x:{					
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