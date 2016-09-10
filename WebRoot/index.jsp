<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>时针、分针重合次数 - 计算</title>

	<script src="js/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
	<script>
	    var sjData = [0,10527.27,21054.55,31621.82,42149.09,52716.36,63343.64,73910.91,84438.18,95005.45,105532.73,120000,130527.27,141054.55,151621.82,162149.09,172716.36,183343.64,193910.91,204438.18,215005.45,225532.73];
		function doCalc(){
			document.getElementById("result").innerHTML="";
			var startTime = document.getElementById("startTime").value;
			var endTime = document.getElementById("endTime").value;
			startTime = startTime.replace(new RegExp(/:/g),'');
			endTime = endTime.replace(new RegExp(/:/g),'');
			startTime = parseFloat(startTime);
			endTime = parseFloat(endTime);
			
			var count = 0;
			for (var i=0;i<sjData.length;i++){
				var temp = sjData[i];
				if (temp>=startTime&&temp<=endTime){
					++count;
				}
			}
			document.getElementById("result").innerHTML=count+"";
		}
	</script>
  </head>
  
  <body>
  <br/>
  <div align="center">时间段：
  	<input type="text" id="startTime" onClick="WdatePicker({dateFmt:'HH:mm:ss',readOnly:true})"/>
  	&nbsp;-&nbsp;
  	<input type="text" id="endTime" onClick="WdatePicker({dateFmt:'HH:mm:ss',readOnly:true})"/>
  </div>
  <br/>
  <div align="center">
  	时针、分针重合次数:&nbsp;<span style="color:red;" id="result"></span>
  </div>
   <br/>
  <div align="center">
  	<input type="button" value="   计 算   " onClick="doCalc()"/>
  </div>

  </body>
</html>
