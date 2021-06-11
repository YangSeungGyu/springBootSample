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
	<div id="chartDiv07" style="width:400px; border:solid 1px black;">
	
		
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

	
	$('#chartDiv07').html('<canvas id="myChart07" style="height:50px; width:400px;"></canvas>');	
	
	var ctx = document.getElementById("myChart07").getContext('2d');	
	new Chart(ctx, {
		type : "bar",
		data : {
			display: true,
			labels : ['test1','test2'],
			datasets : [test1DataSet, test2DataSet]
		},
		options : {		
			indexAxis: 'y'
			,responsive: false

			,scales : {
				yAxes : {
					display : false
					,stacked: true
					,grid : {
						drawOnChartArea: false
						,drawTicks: false
					}
					
				}
				,xAxes:{
					display : false
					,beginAtZero : true
					,stacked: true
					,ticks:{
	                    display : false
	                }
					,grid : {
						drawOnChartArea: false
						,drawTicks: false
					}
					//,categoryPercentage: 1.0
		            //,barPercentage: 1.0
				}
			}			
			,plugins: {
				legend: {
					display: false
				}
				,tooltip :{ 
					enabled: false
				} 
		    }
			,categoryPercentage: 1.0
			,barPercentage : 1.0
		}
	});
</script>


</html>