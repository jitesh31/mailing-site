<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Leftview</title>
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

<body onload="FP_preloadImgs(/*url*/'button33.jpg',/*url*/'button34.jpg')">

<table border="0" width="198" height="526">
	<tr>
		<td height="100" width="188">
		<p>&nbsp; 
		<form method="POST" action="--WEBBOT-SELF--">
			<!--webbot bot="SaveResults" U-File="fpweb:///_private/form_results.csv" S-Format="TEXT/CSV" S-Label-Fields="TRUE" -->
			<p>&nbsp;&nbsp;&nbsp;&nbsp;<a href="composeg.jsp"><img border="0" id="img1" src="button32.jpg" height="33" width="100" alt="Compose" onmouseover="FP_swapImg(1,0,/*id*/'img1',/*url*/'button33.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img1',/*url*/'button32.jpg')" onmousedown="FP_swapImg(1,0,/*id*/'img1',/*url*/'button34.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img1',/*url*/'button33.jpg')" fp-style="fp-btn: Soft Tab 9; fp-font-style: Bold; fp-font-size: 12" fp-title="Compose"></a></p>
		</form>
		</td>
	</tr>
	<tr>
		<td height="53" width="188">&nbsp;&nbsp;&nbsp;&nbsp; <b>
		<a href="mainindex.jsp"><font size="4" color="#000000">
		<span style="text-decoration: none">Inbox</span></font></a></b></td>
	</tr>
	<tr>
		<td height="53" width="188">&nbsp;&nbsp;&nbsp; <b>
		<a href="Sentmail.jsp"><font size="4" color="#000000">
		<span style="text-decoration: none">Sent Mail</span></font></a></b></td>
	</tr>
	<tr>
		<td height="53" width="188">&nbsp;&nbsp;&nbsp;&nbsp; <b>
		<a href="maindraft.jsp"><font size="4" color="#000000">
		<span style="text-decoration: none">Draft</span></font></a></b></td>	</tr>
	<tr>
		<td height="43" width="188">&nbsp;&nbsp;&nbsp; 
		<form method="POST" action="--WEBBOT-SELF--">
			<!--webbot bot="SaveResults" U-File="D:\tomcat8\webapps\firstproject1jsp\_private\form_results.csv" S-Format="TEXT/CSV" S-Label-Fields="TRUE" -->
			<p>&nbsp;</p>
		</form>
		</td>
	</tr>
	<tr>
		<td height="43" width="188">&nbsp;</td>
	</tr>
	<tr>
		<td height="171" width="188">&nbsp;</td>
	</tr>
</table>

</body>

</html>