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

	<div id="chartDiv06" style="height:200xp;width:400px;">
		
	</div>
	
</body>
<script type="text/javascript">
var chartMap06 = {
		test1: {label:'테스트1',color:'#002266'}
		,test2: {label:'테스트2',color:'#4374D9'}
		,test3: {label:'테스트3',color:'#6799FF'}
		,test4: {label:'테스트4',color:'#B2CCFF'}
		,test5: {label:'테스트5',color:'#EDA900'}
		,test6: {label:'테스트6',color:'#FFE08C'}
		,test7: {label:'테스트7',color:'#AACE55'}
		,test8: {label:'테스트8',color:'#8C8C8C'}
	};



	var test1DataSet = {		
		backgroundColor: [chartMap06['test1'].color,chartMap06['test2'].color,chartMap06['test3'].color,chartMap06['test4'].color
			,chartMap06['test5'].color,chartMap06['test6'].color,chartMap06['test7'].color,chartMap06['test8'].color]
		,data : [10,20,6,10,9,13,8,5]
	};
	
	var testLabels = [chartMap06['test1'].label,chartMap06['test2'].label,chartMap06['test3'].label,chartMap06['test4'].label,
		chartMap06['test5'].label,chartMap06['test6'].label,chartMap06['test7'].label,chartMap06['test8'].label];
	
	
	$('#chartDiv06').html('<canvas id="myChart06"></canvas>');	
	var ctx = document.getElementById("myChart06").getContext('2d');	
	new Chart(ctx, {
		type : "pie",
		data : {
			display: true,
			labels : testLabels,
			datasets :[test1DataSet] 
		},
		options : {				
			responsive: false
			,legend: {
				display: false
			}
		}
	});
</script>


</html>