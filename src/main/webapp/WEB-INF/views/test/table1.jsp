<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>	
	<style>
		.tbDiv {
			height: 100px;
			font-size: 12px;
		}
		.mainTb td  {			
			padding : 0px ;		
			width: 65px;		
		}
		
		.innerTb{					
			border-collapse: collapse;
		}
		
		.innerTb td {								
			height:22px; 
			text-align: center;
		}
		
		.ds {
			border : solid 1px black;
			background-color: #B2CCFF;
		}
		.ld {
			border : solid 1px black;
			background-color: #FFC19E;			
		}
		.subTitleDiv {
			float:left;
			height: 50px;
			line-height: 50px;
			width:60px;			
			margin-right: 50px;			
			vertical-align: middle;
		}
		.subTitle {
			height: 30px;
			line-height: 30px;
			display :inline-block;
			width:100%;			
			margin-right: 50px;			
			vertical-align: middle;
			text-align : center;
			font-size: 12px;
		}
		
		.planDiv{
			width : 1400px;
			border : solid 1px black;
		}
	</style>
	<title>Insert title here</title>
</head>

<body>
	<div id="planDiv" class="planDiv">
		<div id="dsDeckSubTitle" class="subTitleDiv">
			<div class="subTitle ds">
				DS-DECK
			</div>
		</div>
		<div id="tbDiv" class="tbDiv">
			<table id="tb1" class="mainTb"></table>
		</div>
		
		<div class="subTitleDiv">
			<div class="subTitle ld">
				LD-DECK
			</div>
		</div>
		<div id="tbDiv" class="tbDiv">
			<table id="tb2" class="mainTb"></table>
		</div>
		
		<div class="subTitleDiv">
			<div class="subTitle ds">
				DS-HOLD
			</div>
		</div>
		<div id="tbDiv" class="tbDiv">
			<table id="tb3" class="mainTb"></table>
		</div>
		
		<div class="subTitleDiv">
			<div class="subTitle ld">
				LD-HOLD
			</div>
		</div>
		<div id="tbDiv" class="tbDiv">
			<table id="tb4" class="mainTb"></table>
		</div>
	</div>	
</body>

<script>
	$(document).ready(function(){
		var dbObj = {			
			dataList : [
				{topTd:115,btmTd01:23,btmTd02:555}
				,{topTd:115,btmTd01:23,btmTd02:555}
				,{topTd:115,btmTd01:23,btmTd02:555}
				,{topTd:115,btmTd01:23,btmTd02:555}
				,{topTd:115,btmTd01:23,btmTd02:555}
				,{topTd:115,btmTd01:23,btmTd02:555}
				,{topTd:115,btmTd01:23,btmTd02:555}
				,{topTd:115,btmTd01:23,btmTd02:555}
				,{topTd:115,btmTd01:23,btmTd02:555}
				,{topTd:115,btmTd01:23,btmTd02:555}
				,{topTd:115,btmTd01:23,btmTd02:555}
				,{topTd:115,btmTd01:23,btmTd02:555}
				,{topTd:115,btmTd01:23,btmTd02:555}
				,{topTd:115,btmTd01:23,btmTd02:555}
			]
			,brigePoint:10
			
		}
		//----------------------------------------
		var tbOpt01 = {
			id : 'main01Td'
			,targetId : 'tb1'
			,tdClass : 'type01'
			,type1 : 'ds'
			,type2 : 'deck'
		}
		
		createTd(dbObj,tbOpt01);
		
		var tbOpt02 = {
				id : 'main02Td'
				,targetId : 'tb2'
				,type1 : 'ld'
				,type2 : 'deck'
		}
		createTd(dbObj,tbOpt02);
		
		var tbOpt03 = {
				id : 'main03Td'
				,targetId : 'tb3'
				,type1 : 'ds'
				,type2 : 'hold'
		}
		createTd(dbObj,tbOpt03);
		
		var tbOpt04 = {
				id : 'main04Td'
				,targetId : 'tb4'
				,type1 : 'ld'
				,type2 : 'hold'
		}
		createTd(dbObj,tbOpt04);
		
		setBackgroundImg(dbObj.dataList.length,dbObj.brigePoint);
	});
	
//-------------------------------------------------	
	function createTd(dbObj,tbOpt){
		var tdCnt = dbObj.dataList.length+1;// brigePoint+1
		var dbList = dbObj.dataList;
		var brigePoint = dbObj.brigePoint-1;
		var targetId = tbOpt.targetId;
		var tdId= tbOpt.id;
		var type1 = tbOpt.type1;
		var type2 = tbOpt.type2;
		
			
		var tr = $("<tr></tr>");
		var dbCnt = 0;
		for(var i=0 ; i<tdCnt ; i++){
			var td = $("<td></td>");
			td.attr('id',tdId+"_"+i);
			
			if(i != brigePoint){
				var innerTb =$("<table class='innerTb'><tr></tr><tr></tr></table>");
				
				var topTd = $("<td colspan='2'></td>");				
				topTd.attr('id',tdId+"Top_"+dbCnt);
				
				var btmTd01 = $("<td></td>");
				btmTd01.attr('id',tdId+"Btm01_"+dbCnt);
				
				var btmTd02 = $("<td></td>");
				btmTd02.attr('id',tdId+"Btm02_"+dbCnt);
				
				if(i == 0){
					btmTd01.html(dbList[dbCnt].btmTd01);
					btmTd01.addClass(type1);
				} else if(i == tdCnt-1 ){
					
					if(type2 == 'deck'){
						topTd.html(dbList[dbCnt].topTd);
						topTd.addClass(type1);	
					}
				} else {
					topTd.html(dbList[dbCnt].topTd);
					topTd.addClass(type1);
					
					btmTd01.html(dbList[dbCnt].btmTd01);
					btmTd01.addClass(type1);
					
					btmTd02.html(dbList[dbCnt].btmTd02);
					btmTd02.addClass(type1);	
				}
				
				innerTb.find('tr:nth-child(1)').append(topTd);
				innerTb.find('tr:nth-child(2)').append(btmTd01);
				innerTb.find('tr:nth-child(2)').append(btmTd02);
				td.append(innerTb);
				dbCnt++;
			}			
			tr.prepend(td);
		}
		$("#"+targetId).append(tr);			
	}
//-------------------------------------------------		
	function setBackgroundImg(listCnt,brigePoint){
		//info : ?????? background???????????? repeat?????? ?????? ?????? ???????????? ??????????????? ?????? ??????
	
		var centerCnt = listCnt-1; // -1 = listCnt - 2(?????????,?????????td) + 1(??????)
		var firstImgSize = 120;//????????? ????????? ?????? ??? ??????
		var lastImgSize = 120;//????????? ????????? ?????? ??? ??????
		var tbBorderSpace = Number($("#tb1").css("border-spacing").split("px")[0]); //????????? td??????
		var bPoint = centerCnt - (brigePoint-1);
		
		
		//????????? ???????????? div+????????? td
		var firstPosition = ($("#dsDeckSubTitle").outerWidth(true)+$("#main01Td_0").outerWidth(true))+tbBorderSpace;
		var centerPosition = (firstPosition); //center,last background ????????? ?????? ?????????
		
		//????????? background????????? ??????
		var backgroundImageFirst = "url('../img/ship_1.png'),";
		var backgroundSizeFirst = firstImgSize+"px 200px,";
		var backgroundPositionFirst = (firstPosition-firstImgSize)+"px 0px,";
		
		//?????? background????????? ??????
		var backgroundImageCenter = "";
		var backgroundSizeCenter =  "";
		var backgroundPositionCenter = "";
		
		//td?????? ?????? background ????????? ??????
		for(var i=0;i<centerCnt;i++){
			let centerTdWidth = $("#main01Td_"+(i+1)).outerWidth(true)+tbBorderSpace;
			if(i == bPoint){
				backgroundImageCenter += "url('../img/ship_brige.png'),";
			}else {
				backgroundImageCenter += "url('../img/ship_2.png'),";	
			}
			
			backgroundSizeCenter += (centerTdWidth+1)+"px 200px,";
			backgroundPositionCenter += centerPosition+"px 0px,";
			centerPosition += centerTdWidth;
		}
		
		//????????? background????????? ??????
		var backgroundImageLast = "url('../img/ship_3.png')";
		var backgroundSizeLast =  lastImgSize+"px 200px";
		var backgroundPositionLast = centerPosition+"px 0px";
		
		//?????? background ????????? ??????		
		$("#planDiv").css('background-image',backgroundImageFirst + backgroundImageCenter + backgroundImageLast);
		$("#planDiv").css('background-size',backgroundSizeFirst + backgroundSizeCenter + backgroundSizeLast);
		$("#planDiv").css('background-repeat',"no-repeat");
		$("#planDiv").css('background-position',backgroundPositionFirst + backgroundPositionCenter + backgroundPositionLast);
	}

</script>
</html>