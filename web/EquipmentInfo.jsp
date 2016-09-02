<jsp:include page="header.jsp" />
<article style="width: 90%;">
    <div  style="text-align: center;margin-top: 30px;">   
        </head>
        <body>
            <form method="post" action="<%=request.getContextPath() + "/controller?action=entertimedetails"%>">
                <br>
                <span class="text_border size_text text_">You can rent the equipment only for today.You can collect the booked equipment at SAC.<br>After you book the equiptment you can collect it at below address and timing</span><br>
                
                <p class="text_border size_text white_text inline">Address:<br><br></p><p class="text_border size_text text_ inline">9201 University city Blvd.<br>
                202 Barnhardt Student<br>
                Activity Center</p><br>
                <p class="text_border size_text white_text bold_text inline">Timing:<br></p><p class="text_border size_text text_ inline">9am - 5pm (Monday - Friday)</p><br>
                <p class="text_border size_text white_text bold_text inline">Phone:<br></p><p class="text_border size_text text_ inline">704-687-1100</p>
                
                <br><br>
                <button type="submit" class="btn btn-success pad_3 " style="width: 25%; margin-left: auto;margin-right: auto;">Proceed</button>  <button class="btn btn-danger pad_3" style="width: 25%; margin-left: auto;margin-right: auto;" onclick=" window.history.back();">Back</button>
            </form>



            </article>
        </body>
