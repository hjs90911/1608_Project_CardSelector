<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head>
    
    <script src="http://code.jquery.com/jquery-latest.js"></script>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>SSGSSG LOGIN PAGE</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
    </head>
    <body>
    <script>
	$(function(){
		$("form").submit(function(){
		       if($("#Mem_ID").val() == ""){
		            alert("ID를 입력해주세요");
		            $("#MEM_ID").focus();
		            return false;
		       }
		      if($("#Mem_PW").val() == ""){
		            alert("비밀번호를 입력해주세요");
		            $("#MEM_PW").focus();
		            return false;
		      }
	});
		   $("#join").click(function(){
				location.href="joinform.jsp"		   
		   });
	})
</script>
        <div class="container">
            <!-- Codrops top bar -->
            <div class="codrops-top">
                <div class="clr"></div>
            </div><!--/ Codrops top bar -->
            <header>
                <h1 align="left">SSGSSG LOGIN</span></h1>
            </header>
            <section >				
                <div id="container_demo"  align="left">
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="/Project/MemberLoginAction.me" autocomplete="on"> 
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > ID </label>
                                    <input name="Mem_ID" id="Mem_ID" required="required" type="text" placeholder="ID를 입력하시오"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> password </label>
                                    <input name="Mem_PW" id="Mem_PW" required="required" type="password" placeholder="PW를 입력하시오" /> 
                                </p>
                                <p class="login button" align="center"> 
                               <input type="submit" value="Login">&nbsp;&nbsp; 
							   <input type="button" name="join" id="join" value="Join" ></td>
								</p>
                            </form>
                        </div>
                    </div>
                </div>  
            </section>
        </div>
    </body>
</html>

