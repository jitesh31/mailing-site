<%! String email,pass; %>
 
 <%
   try{
     Cookie cookie[]=request.getCookies();
	 
	    if(cookie!=null){
			
		  for(int i=0;i<cookie.length;i++)
			{
				String name=cookie[i].getName()+"";
				if(name=="uname")
				{
                  email=cookie[i].getValue()+"";
				out.println(name+" "+email);
				}
				if(name=="upass")
				{
                 pass=cookie[i].getValue()+"";
				out.println(name+" "+pass);
				}
			}
	
		}
		
		if(email!=null && pass!=null){
		     response.sendRedirect("Validation.jsp?email="+email+"&pass="+pass);
		}
        else{
	
%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Mailing Site</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>

      
	  

<!--Main Navigation-->


<html lang="en" class="full-height">

<!--Main Navigation-->
<header>

    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#"><strong>Mailing System</strong></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="nu.html">Create Account</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Help</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="view intro-2">
        <div class="full-bg-img">
            <div class="mask rgba-indigo-slight flex-center">
                <div class="container">
                    <div class="white-text text-center wow fadeInUp">
                        
               
<!-- Material form login -->
<form method="post" action="Validation.jsp">
    <p class="h4 text-center mb-4">Sign in</p>

    <!-- Material input email -->
    <div class="md-form">
        <i class="fa fa-envelope prefix grey-text"></i>
        <input type="email" id="materialFormLoginEmailEx" class="form-control" name="email">
        <label for="materialFormLoginEmailEx">Your email</label>
    </div>

    <!-- Material input password -->
    <div class="md-form">
        <i class="fa fa-lock prefix grey-text"></i>
        <input type="password" id="materialFormLoginPasswordEx" class="form-control" name="pass">
        <label for="materialFormLoginPasswordEx">Your password</label>
    </div>

    <div class="text-center mt-4">
        <button class="btn btn-default" type="submit">Login</button>
    </div>
	<a href="nu.html" style="text-decoration:none">Register Here</a>
</form>
<!-- Material form login -->
                      						
 </div>
                </div>
            </div>
        </div>
    </div>

</header>
<!--Main Navigation-->

<!--Main Layout-->
<!--Main Layout-->
<!--Main Navigation-->

<!--Main Layout-->
<!--Main Layout-->
<!--Main Layout-->

    <!-- Start your project here-->
    <!-- /Start your project here-->

    <!-- SCRIPTS -->
    <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
</body>

</html>
<%
}
}catch(Exception e)
{
	out.println(e);
}

%>
