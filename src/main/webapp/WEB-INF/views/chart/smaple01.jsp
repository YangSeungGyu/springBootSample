<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="../chart.js-3.1.0/package/dist/chart.min.js"></script>		
	<title>Insert title here</title>
</head>
<body>
sdfsdf

	<canvas id="myChart01"></canvas>
</body>
<script type="text/javascript">
var ctx = document.getElementById("myChart01");
var myChart = new Chart(ctx, {
    type : "bar",
    data : {
          labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"]
        , datasets : [{
              label: "#BarChart01"
            , data: [12, 19, 3, 5, 2, 3]
            , backgroundColor : [
                  "rgba(255, 99, 132, 0.2)"
                , "rgba(54, 162, 235, 0.2)"
                , "rgba(255, 206, 86, 0.2)"
                , "rgba(75, 192, 192, 0.2)"
                , "rgba(153, 102, 255, 0.2)"
                , "rgba(255, 159, 64, 0.2)"
            ]
            , borderColor: [
                  "rgba(255, 99, 132, 1)"
                , "rgba(54, 162, 235, 1)"
                , "rgba(255, 206, 86, 1)"
                , "rgba(75, 192, 192, 1)"
                , "rgba(153, 102, 255, 1)"
                , "rgba(255, 159, 64, 1)"
            ]
            , borderWidth : 1
        }]
    }
    , options : {
        scales : {
            yAxes : [{
                ticks : { beginAtZero : true }
            }]
        }
    }
});
</script>


</html>