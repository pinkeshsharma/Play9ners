<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="styles/common.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="bootstrap/bootstrap-theme.min.css">
        <script src="bootstrap/bootstrap.min.js"></script>
    </head>
    <body style="background-image: url('images/17094515785_73a96cb107_b.jpg');background-size:cover">
        <article class="rootContent">
            <form action="controller?action=login" method="POST" class="centered login_center">
                <div class="pad_3 topOfBox">${msg}</div>
                <ul class="form-group">
                    <li class="inline"><label><font color="white" size="72"> Play9ers!!!</font></li>
                </ul>
                <ul class="form-group">
                    <li class=""><label  for="email"><font color="white">Email Address*</font></label></li>
                    <li class=""><input class="form-control" placeholder="Email" type="email" size="40" name="email" required /><br></li>
                </ul>
                <ul class="form-group">
                    <li class=""><label for="pwd"><font color="white">Password*</font></label></li>
                    <li class=""><input class=" form-control" placeholder="Password" type="password" size="40" name="password" required /><br></li>
                </ul>
                <ul class="form-group">
                    <li class="inline "></li>
                    <li class="inline"> <input type="submit" class="btn btn-success" value="Log in" name="login" /></li>
                </ul>
            </form>
        </article>
    </body>