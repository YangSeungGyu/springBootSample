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
	<div id="chartDiv09" style="width:400px;  border:solid 1px black; position:relative;">	
	</div>
	
</body>
<script type="text/javascript">
	var chartMap09 = {
		test1: {label:'테스트1',color:'#002266'}
		,test2: {label:'테스트2',color:'#4374D9'}
	};

	var test1DataSet = {				
		 backgroundColor: chartMap09['test1'].color,
		borderWidth : 0,
		data : [10]
	};
	
	var test2DataSet = {		
		backgroundColor: chartMap09['test2'].color,
		borderWidth : 0,
		data : [5]		
	};

	
	$('#chartDiv09').html('<canvas id="myChart09" style="height:50px; width:400px;"></canvas>');	
	
	var ctx = document.getElementById("myChart09").getContext('2d');	
	new Chart(ctx, {
		type : "horizontalBar",
		data : {
			display: true,
			labels : ['test1'],
			datasets : [test1DataSet, test2DataSet]
		},
		options : {		
			responsive: false
			,scales : {
				yAxes : [{
					display : false
					,stacked: true
					,categoryPercentage: 1.0
					,barPercentage : 1.0
					
				}]
				,xAxes:[{
					display : false
					,stacked: true
					,ticks:{
						beginAtZero : true
					}

				}]
			}
			,animation: {
				duration: 1,
				onComplete: function () {
					let chartInstance = this.chart,
					ctx2 = chartInstance.ctx;
					ctx2.textAlign = 'left';
					ctx2.textBaseline = 'bottom';
					ctx2.fillStyle = 'white';
					ctx2.font = '20px '+ this.options.defaultFontStyle;
					ctx2.fillText('15% -> 20%',15 , 35);
				}
			}
			,hover: {
				animationDuration: 0
				,mode: false
			}
			,legend: {
				display: false
			}
			,tooltips :{ 
				enabled: false
			}
			
		}
	});
	
	//$("#chartDiv09").append('<p style="color:white; margin:0px; position:absolute; top:50%; left:5px;transform:translateY(-50%);">10% -> 50%</p>');

</script>


</html>