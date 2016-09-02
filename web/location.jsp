<jsp:include page="header.jsp" />
<article style="width: 90%;">
    <div  style="text-align: center;margin-top: 30px;">   
        </head>
        <body>
            <form method="post" action="<%=request.getContextPath() + "/controller?action=LocDetails"%>">
                <br><br>
                <input type="hidden" id="location_val" name="location_val" value="SAC"/>
                <button type="submit" class="btn btn-success" style="width: 25%; margin-left: auto;margin-right: auto;">SAC</button>  
            </form>

            <div  style="text-align: center;margin-top: 30px;"> 
                <form method="post" action="<%=request.getContextPath() + "/controller?action=LocDetails"%>">
                    <input type="hidden" id="location_val" name="location_val" value="Belk"/>
                    <button type="submit" class="btn btn-success" style="width: 25%; margin-left: auto;margin-right: auto;">BELK</button>
            </form>

            </div>

            </article>
        </body>

