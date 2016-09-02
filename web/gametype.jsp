<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="bootstrap/bootstrap-theme.min.css">
        <script src="bootstrap/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/shared.css">
        <article style="width: 90%;">
             <div  style="text-align: center;margin-top: 30px;">   
             </head>
             <body>
                  <form method="post" action="survey.jsp">
                       <br><br><br><br><br> 
                 <button type="submit" class="btn btn-primary" style="width: 25%; margin-left: auto;margin-right: auto;">INDOOR GAMES</button>  
            </form>
<!--                <p> <a href="votezController?action=listofcandidates">CLICK HERE TO SEE THE CANDIDATE DETAILS</a> </p>-->
        <div  style="text-align: center;margin-top: 30px;"> 
        <form method="post" action=votezController?action=listofcandidates>
        <button type="submit" class="btn btn-primary" style="width: 25%; margin-left: auto;margin-right: auto;">OUTDOOR GAMES</button>
        </div>
    </form> 
        </article>
    </body>
      