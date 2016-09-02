<jsp:include page="header.jsp" />
<article style="width: 90%;">
    <div  style="text-align: center;margin-top: 30px;">   
        </head>
        <body>
            <form method="post" action="<%=request.getContextPath() + "/controller?action=confirmBooking"%>">
                <br><br><br><br>
                <span><font color="white" size="12">Are you sure you want to book the slot!!!</font></span>
                <br><br><br><br><br><br>
                <button type="submit" class="btn btn-success" style="width: 25%; margin-left: auto;margin-right: auto;">Confirm</button>  
            </form>

           

            </article>
        </body>

