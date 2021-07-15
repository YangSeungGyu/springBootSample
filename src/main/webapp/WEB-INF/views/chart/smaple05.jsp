<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script type="text/javascript" src="/chart.js-2.9.4/Chart.bundle.min.js"></script>
	<script type="text/javascript" src="/chart.js-2.9.4/Chart.min.js"></script>		
	<title>Insert title here</title>
</head>
<body>

	<div id="chartDiv05" style="height:200xp;width:400px;">
		
	</div>
	
</body>
<script type="text/javascript">
	var chartMap05 = {
		test1: {label:'테스트1',color:'#F29661'}
		,test2: {label:'테스트2',color:'#6799FF'}
	};

	var test1DataSet = {
		
		label : chartMap05['test1'].label,
		backgroundColor: chartMap05['test1'].color,
		data : [ 10, 5]
	};
	
	var test2DataSet = {
		label : chartMap05['test2'].label,
		backgroundColor: chartMap05['test2'].color,
		data : [ 5, 8 ]
	};

	
	$('#chartDiv05').html('<canvas id="myChart05"></canvas>');	
	var ctx = document.getElementById("myChart05").getContext('2d');	
	new Chart(ctx, {
		type : "horizontalBar",
		data : {
			display: true,
			labels : ['test1','test2'],
			datasets : [test1DataSet, test2DataSet]
		},
		options : {		
			
			responsive: false
			,scales : {
				yAxes : [{					
					stacked: true
				}]
				,xAxes:[{
					stacked: true
					,ticks: {
						beginAtZero: true
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