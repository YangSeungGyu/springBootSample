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
	<div id="chartDiv07" style="width:400px; border:solid 1px black;"></div>
	
</body>
<script type="text/javascript">
	var chartMap07 = {
		test1: {label:'테스트1',color:'#F29661'}
		,test2: {label:'테스트2',color:'#BDBDBD'}
	};

	var test1DataSet = {
		
		label : chartMap07['test1'].label,
		 backgroundColor: chartMap07['test1'].color,
		data : [ 10, 5]
	};
	
	var test2DataSet = {
		label : chartMap07['test2'].label,
		backgroundColor: chartMap07['test2'].color,
		data : [ 5, 8 ]
	};

	
	$('#chartDiv07').html('<canvas id="myChart07" style="height:50px; width:400px;"></canvas>');	
	
	var ctx = document.getElementById("myChart07").getContext('2d');	
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

					this.data.datasets.forEach(function(dataset, i){						
						let meta = chartInstance.controller.getDatasetMeta(i);
						let bfMeta = (i==0) ? null: chartInstance.controller.getDatasetMeta(i-1);
						//console.log(meta);						
						meta.data.forEach(function(bar, index) {
							let data = dataset.data[index];
							let xPosition = ((bfMeta == null) ? 0 : bfMeta.data[index]._model.x)+15;
							let firstTx ='↗';
							//글자 앞에
							ctx2.fillStyle = 'red';
							ctx2.fillText(firstTx,xPosition, bar._model.y + 5);
							//본문
							ctx2.fillStyle = 'white';
							xPosition = xPosition+ctx2.measureText(firstTx).width + 5;
							ctx2.fillText(data+'%',xPosition, bar._model.y + 5);
							//글자 뒤에
							ctx2.fillStyle = 'blue';
							xPosition = xPosition+ctx2.measureText(data+'%').width + 5;
							ctx2.fillText('↘',xPosition , bar._model.y + 5);
						});
					});
				}
			}
			,hover: {
				animationDuration: 0
				,mode: false
			}
			,legend: {
				display: false
			}
			,tooltips:{ 
				enabled: false
			} 
			
		}
	});
	//ctx.fontStyle = "red";
	//ctx.fillText("10% ->30%",5,10);
</script>


</html>