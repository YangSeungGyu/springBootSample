<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
	
	<title>Insert title here</title>
</head>
<style>
	.iconTest {
		position:absolute;
		border: 3px solid red;
	}
	
	.tb{
		border: 1px solid black;
	}
</style>
<body>

<div style=" height: 100px;width: 1200px; background-color:blue;"></div>


 <div id="testImg" style="position:relative; background-image:url(../img/testImg.png);background-repeat: no-repeat;background-size: 100% 100%; height: 500px;width: 1200px;">
 </div>
<div>
	<table id="tb">		
		<tr>
			<th>시작x : </th>
			<td id="startX"></td>
			<th>마지막x : </th>
			<td id="endX"></td>
			<td>|</td>
			<th  style="background-color: #8C8C8C">X : </th>
			<td id="pointX"></td>
			<th  style="background-color: #8C8C8C">Y : </th>
			<td id="pointY"></td>
			<td rowspan="2">
				<input type="button" value="초기화" onclick="resetSize();" style="width: 100%">
			</td>
		</tr>
		<tr>
			<th>시작y : </th>
			<td id="startY"></td>
			<th>마지막y : </th>
			<td id="endY"></td>
			<td>|</td>
			<th  style="background-color: #8C8C8C">with : </th>
			<td id="with"></td>
			<th  style="background-color: #8C8C8C">height : </th>
			<td id="height"></td>
		</tr>
		<tr>
			<td colspan="6"></td>
		</tr>
	</table>
</div> 
 
<div style=" height: 100px;width: 1200px; background-color:blue;"></div> 
 
</body>

<script>
$(document).ready(function(){
	$("#1A").html('werwer');	
});

var pMap = {
		div9A:{left:"131" ,top:"149" , width:"84" ,height:"38"},
		div9B:{left:"108" ,top:"194" , width:"104" ,height:"38"},
		div9C:{left:"86" ,top:"240" , width:"131" ,height:"36"},
		div9D:{left:"63" ,top:"285" , width:"153" ,height:"35"},
		div9E:{left:"41" ,top:"327" , width:"175" ,height:"39"}
}

var div9A = '<div id="9A" class="iconTest" style="left:'+pMap.div9A.left+'px; top:'+pMap.div9A.top+'px;  width: '+pMap.div9A.width+'px; height:'+pMap.div9A.height+'px;"></div>';
var div9B = '<div id="9B" class="iconTest" style="left:'+pMap.div9B.left+'px; top:'+pMap.div9B.top+'px;  width: '+pMap.div9B.width+'px; height:'+pMap.div9B.height+'px;"></div>';
var div9C = '<div id="9C" class="iconTest" style="left:'+pMap.div9C.left+'px; top:'+pMap.div9C.top+'px;  width: '+pMap.div9C.width+'px; height:'+pMap.div9C.height+'px;"></div>';
var div9D = '<div id="9D" class="iconTest" style="left:'+pMap.div9D.left+'px; top:'+pMap.div9D.top+'px;  width: '+pMap.div9D.width+'px; height:'+pMap.div9D.height+'px;"></div>';
var div9E = '<div id="9E" class="iconTest" style="left:'+pMap.div9E.left+'px; top:'+pMap.div9E.top+'px;  width: '+pMap.div9E.width+'px; height:'+pMap.div9E.height+'px;"></div>';




$("#testImg").append(div9A);
$("#testImg").append(div9B);
$("#testImg").append(div9C);
$("#testImg").append(div9D);
$("#testImg").append(div9E);

$("#testImg").click(function(e){
	var x = event.offsetX;
	var y = event.offsetY;
	
	if($("#startX").html() == ""){
		$("#startX").html(x);
		$("#startY").html(y);
	} else if($("#endX").html() == ""){
		$("#endX").html(x);	
		$("#endY").html(y);
		$("#with").html(Math.abs($("#startX").html() - $("#endX").html()));
		$("#height").html(Math.abs($("#startY").html() - $("#endY").html()));
		
		var pointX = Math.min($("#startX").html(),$("#endX").html());
		var pointY = Math.min($("#startY").html(),$("#endY").html());
		$("#pointX").html(pointX);
		$("#pointY").html(pointY);
		
	}
});



function resetSize(){
	$("#startX").html("");
	$("#endX").html("");
	$("#with").html("");
	
	$("#startY").html("");
	$("#endY").html("");
	$("#height").html("");
	
	$("#pointX").html("");
	$("#pointY").html("");
}


</script>
</html>