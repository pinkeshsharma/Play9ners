<jsp:include page="header.jsp" />
<article style="width: 90%;">
    <div  style="text-align: center;margin-top: 30px;">   
        </head>
        <body>
            <form method="post" action="<%=request.getContextPath() + "/controller?action=location"%>">
                <br><br>
                <input type="hidden" id="sportId" value="BADMINTON"/>
                <button type="submit" class="btn btn-success" style="width: 25%; margin-left: auto;margin-right: auto;">BADMINTON</button>  
            </form>

            <div  style="text-align: center;margin-top: 30px;"> 
                <form method="post" action="<%=request.getContextPath() + "/controller?action=location"%>">
                    <input type="hidden" id="sportId" value="BASKETBALL"/>
                    <button type="submit" class="btn btn-success" style="width: 25%; margin-left: auto;margin-right: auto;">BASKETBALL</button>
            </div>
            </form>
            <div  style="text-align: center;margin-top: 30px;">                
                <form method="post" action="<%=request.getContextPath() + "/controller?action=location"%>">
                    <input type="hidden" id="sportId" value="VOLLEYBALL"/>
                    <button type="submit" class="btn btn-success" style="width: 25%; margin-left: auto;margin-right: auto;"> VOLLEY BALL</button>  
                </form>
            </div>
                <div  style="text-align: center;margin-top: 30px;">                
                <form method="post" action="<%=request.getContextPath() + "/controller?action=location"%>">
                    <input type="hidden" id="sportId" value="FOOTBALL"/>
                    <button type="submit" class="btn btn-success" style="width: 25%; margin-left: auto;margin-right: auto;"> FOOT BALL</button>  
                </form>
            </div>
                <div  style="text-align: center;margin-top: 30px;">                
                <form method="post" action="<%=request.getContextPath() + "/controller?action=location"%>">
                    <input type="hidden" id="sportId" value="BASEBALL"/>
                    <button type="submit" class="btn btn-success" style="width: 25%; margin-left: auto;margin-right: auto;"> BASE BALL</button>  
                </form>
            </div>
                <div  style="text-align: center;margin-top: 30px;">                
                <form method="post" action="<%=request.getContextPath() + "/controller?action=location"%>">
                    <input type="hidden" id="sportId" value="TENNIS"/>
                    <button type="submit" class="btn btn-success" style="width: 25%; margin-left: auto;margin-right: auto;"> TENNIS </button>  
                </form>
            </div>
            </article>
        </body>
