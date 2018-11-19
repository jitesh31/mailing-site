<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Gmail</title>
<script language="JavaScript">
<!--
function FP_swapImg() {//v1.0
 var doc=document,args=arguments,elm,n; doc.$imgSwaps=new Array(); for(n=2; n<args.length;
 n+=2) { elm=FP_getObjectByID(args[n]); if(elm) { doc.$imgSwaps[doc.$imgSwaps.length]=elm;
 elm.$src=elm.src; elm.src=args[n+1]; } }
}

function FP_preloadImgs() {//v1.0
 var d=document,a=arguments; if(!d.FP_imgs) d.FP_imgs=new Array();
 for(var i=0; i<a.length; i++) { d.FP_imgs[i]=new Image; d.FP_imgs[i].src=a[i]; }
}

function FP_getObjectByID(id,o) {//v1.0
 var c,el,els,f,m,n; if(!o)o=document; if(o.getElementById) el=o.getElementById(id);
 else if(o.layers) c=o.layers; else if(o.all) el=o.all[id]; if(el) return el;
 if(o.id==id || o.name==id) return o; if(o.childNodes) c=o.childNodes; if(c)
 for(n=0; n<c.length; n++) { el=FP_getObjectByID(id,c[n]); if(el) return el; }
 f=o.forms; if(f) for(n=0; n<f.length; n++) { els=f[n].elements;
 for(m=0; m<els.length; m++){ el=FP_getObjectByID(id,els[n]); if(el) return el; } }
 return null;
}
// -->
</script>
</head>

<body onload="FP_preloadImgs(/*url*/'button30.jpg',/*url*/'button31.jpg')">

<table border="0" width="1300" height="191">
	<tr>
		<td height="95" width="130">
		<img border="0" src="giphy.gif" width="168" height="59"></td>
		<% 
		String username=(String)session.getAttribute("email");
		%>
		<td height="95" width="1116">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Welcome <%= username%></b>
	    <form method="POST" action="--WEBBOT-SELF--">
			<!--webbot bot="SaveResults" U-File="D:\tomcat8\webapps\firstproject1jsp\_private\form_results.csv" S-Format="TEXT/CSV" S-Label-Fields="TRUE" -->
			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<textarea rows="2" name="S1" cols="80"></textarea><img border="0" src="download.jpg" width="32" height="32">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="signout.jsp">
			<img border="0" id="img1" src="button2F.jpg" height="20" width="100" alt="Sign Out" onmouseover="FP_swapImg(1,0,/*id*/'img1',/*url*/'button30.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img1',/*url*/'button2F.jpg')" onmousedown="FP_swapImg(1,0,/*id*/'img1',/*url*/'button31.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img1',/*url*/'button30.jpg')" fp-style="fp-btn: Embossed Capsule 9; fp-font-style: Bold; fp-font-size: 11" fp-title="Sign Out"></a> </p>
		
		</td>
	</tr>
	<tr>
		<td height="90" width="130">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<img border="0" src="g.gif" width="65" height="65"></td>
		<td height="90" width="1116">
			<!--webbot bot="SaveResults" U-File="D:\tomcat8\webapps\firstproject1jsp\_private\form_results.csv" S-Format="TEXT/CSV" S-Label-Fields="TRUE" -->
			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
			<select size="1" name="D1" multiple tabindex="11">
			<option>All</option>
			<option>None</option>
			<option>READ</option>
			<option>Unread</option>
			<option>Starred</option>
			</select>&nbsp;&nbsp;&nbsp;&nbsp;
			<font size="1">
			<input type="button" value="Refresh" name="B4"></font>&nbsp;&nbsp; </p>
			
		
		</td>
	</tr>
			
</table>
</form>
</body>

</html>