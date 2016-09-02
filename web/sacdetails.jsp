<jsp:include page="header.jsp" />
<article style="width: 90%;">
    <div  style="text-align: center;margin-top: 30px;">   
        </head>
        <body>
            <form method="post" action="<%=request.getContextPath() + "/controller?action=court"%>">
                <br><br>
                <input type="hidden" id="court_det" name="court_det" value="Court 1"/>
                <button type="submit" class="btn btn-success " style="width: 15%; margin-left: auto;margin-right: auto;">COURT 1</button>  
            </form>

            <div  style="text-align: center;margin-top: 30px;"> 
                <form method="post" action="<%=request.getContextPath() + "/controller?action=court"%>">
                    <input type="hidden" id="court_det" name="court_det" value="Court 2"/>
                    <button type="submit" class="btn btn-success" style="width: 15%; margin-left: auto;margin-right: auto;">COURT 2</button>
            </div>
            </form>
            <div  style="text-align: center;margin-top: 30px;">                
                <form method="post" action="<%=request.getContextPath() + "/controller?action=court"%>">
                    <input type="hidden" id="court_det" name="court_det" value="Court 3"/>
                    <button type="submit" class="btn btn-success" style="width: 15%; margin-left: auto;margin-right: auto;"> COURT 3</button>  
                </form>
            </div>
            <div  style="text-align: center;margin-top: 30px;">                
                <form method="post" action="<%=request.getContextPath() + "/controller?action=court"%>">
                    <input type="hidden" id="court_det" name="court_det" value="Court 4"/>
                    <button type="submit" class="btn btn-success" style="width: 15%; margin-left: auto;margin-right: auto;"> COURT 4</button>  
                </form>
            </div>
            <div  style="text-align: center;margin-top: 30px;">                
                <form method="post" action="<%=request.getContextPath() + "/controller?action=court"%>">
                    <input type="hidden" id="court_det" name="court_det" value="Court 5"/>
                    <button type="submit" class="btn btn-success" style="width: 15%; margin-left: auto;margin-right: auto;"> COURT 5</button>  
                </form>
            </div>
            <div  style="text-align: center;margin-top: 30px;">                
                <form method="post" action="<%=request.getContextPath() + "/controller?action=court"%>">
                    <input type="hidden" id="court_det" name="court_det" value="Court 6"/>
                    <button type="submit" class="btn btn-success" style="width: 15%; margin-left: auto;margin-right: auto;"> COURT 6</button>  
                </form>
            </div>
            </article>
        </body>
