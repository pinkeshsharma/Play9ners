<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Play9ners</title>
        <link rel="stylesheet" href="styles/common.css">
        <link rel="stylesheet" href="styles/datatables.min.css">
        <link rel="stylesheet" href="styles/jquery.timepicker.css">
        <script src="script/jquery-1.11.3.min.js"></script>
        <script src="script/jquery.dataTables.min.js"></script>
        <script src="script/common_script.js"></script>
        <script src="script/jquery.timepicker.js"></script>
        <script src="script/jquery.timepicker.min.js"></script>
        

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="bootstrap/bootstrap-theme.min.css">
        <script src="bootstrap/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/shared.css">
    </head>
    <body style="background-image: url('images/UNCC_SAC_005_1.jpg');background-size:cover">
        <div class="top">
            <div>
                <span><a href="<%=request.getContextPath() + "/controller?action=main"%>" > <img class="div_image1" alt="Default Image" src="images/UNCC.jpg"></a></span>
                <div class="top_box">

                </div>
                <div class="top_box">

                </div>
                <div class="top_box text_border ">
                    <c:if test="${User != null}">
                        <div>Hello, ${User.name}</div>
                    </c:if>
                </div>
                <div class="top_box text_border ">
                    <a class="a_class" href="<%=request.getContextPath() + "/controller?action=logout"%>">Logout</a>
                </div>
            </div>
        </div>