<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="/chart.js-2.9.4/Chart.bundle.min.js"></script>
	<script type="text/javascript" src="/chart.js-2.9.4/Chart.min.js"></script>	
	<title>Insert title here</title>
</head>
<body>

	<div id="chartDiv02" style="height:200xp;width:400px;">
		
	</div>
	
</body>
<script type="text/javascript">
	var chartMap02 = {
		test1: {label:'테스트1',color:'#F29661',style:'rect'}
		,test2: {label:'테스트2',color:'#6799FF',style:'rectRot'}
	};
	
	var test1DataSet = {
		
		label : chartMap02['test1'].label,
		borderColor : chartMap02['test1'].color,
		 backgroundColor: chartMap02['test1'].color,
		borderWidth : 2,
		fill: false,
		lineTension: 0,
		pointStyle : chartMap02['test1'].style,
		data : [ 10, 5, 3, 3 ]
	};
	
	var test2DataSet = {
		label : chartMap02['test2'].label,
		borderColor : chartMap02['test2'].color,
		backgroundColor: chartMap02['test2'].color,
		borderWidth : 2,
		fill: false,
		lineTension: 0,
		pointStyle : chartMap02['test2'].style,
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
				yAxes : [{					
					ticks: {
						beginAtZero: true,
					}
				}]
			}
			,legend: {
				display: true,
				useLineStyle: true,
				usePointStyle: true,
				position : 'bottom'
			}
		}
		
	});
</script>


</html>