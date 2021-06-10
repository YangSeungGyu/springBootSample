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
		position:absolute; height:30px; width: 100px; background-color:red;
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
			<th colspan="2">좌표 : </th>
			<th>X : </th>
			<td id="pointX"></td>
			<th>Y : </th>
			<td id="pointY"></td>
		</tr>
		<tr>
			<th>시작x : </th>
			<td id="startX"></td>
			<th>마지막x : </th>
			<td id="endX"></td>
			<th>with : </th>
			<td id="with"></td>
		</tr>
		<tr>
			<th>시작y : </th>
			<td id="startY"></td>
			<th>마지막y : </th>
			<td id="endY"></td>
			<th>height : </th>
			<td id="height"></td>
		</tr>
		<tr>
			<td colspan="6"><input type="button" value="초기화" onclick="resetSize();" style="width: 100%"></td>
		</tr>
	</table>
	
</div> 
 
<div style=" height: 100px;width: 1200px; background-color:blue;"></div> 
 
</body>

<script>
$(document).ready(function(){
	$("#1A").html('werwer');	
});



var div1A = '<div id="1A" class="iconTest" style="top:'+getSpaceY(1)+'px; left:'+getSpaceX(1)+'px;"></div>'
var div2A = '<div id="2A" class="iconTest" style="top:'+getSpaceY(1)+'px; left:'+getSpaceX(2)+'px;"></div>'
var div3A = '<div id="3A" class="iconTest" style="top:'+getSpaceY(1)+'px; left:'+getSpaceX(3)+'px;"></div>'
var div4A = '<div id="4A" class="iconTest" style="top:'+getSpaceY(1)+'px; left:'+getSpaceX(4)+'px;"></div>'

$("#testImg").append(div1A);
$("#testImg").append(div2A);
$("#testImg").append(div3A);
$("#testImg").append(div4A);

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

function getSpaceY(postion){
	var defaultSpace = 36;
	var space =40;	
	return defaultSpace + (space * postion);
	
}
function getSpaceX(postion){	
	var defaultSpace = 224;
	var space =140;	
	return defaultSpace + (space * postion);
	
}

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