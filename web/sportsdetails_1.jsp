<jsp:include page="header.jsp" />
<article style="width: 90%;">
    <div  style="text-align: center;margin-top: 30px;">   
        </head>
        <body>
            <form method="post" action="<%=request.getContextPath() + "/controller?action=location"%>">
                <br><br>
                <input type="hidden" id="sportId" name="sportId" value="Badminton"/>
                <button type="submit" class="btn btn-success" style="width: 25%; margin-left: auto;margin-right: auto;">Badminton</button>  
            </form>

            <div  style="text-align: center;margin-top: 30px;"> 
                <form method="post" action="<%=request.getContextPath() + "/controller?action=location"%>">
                    <input type="hidden" id="sportId" name="sportId" value="Basketball"/>
                    <button type="submit" class="btn btn-success" style="width: 25%; margin-left: auto;margin-right: auto;">Basketball</button>
                </form>

            </div>
            <div  style="text-align: center;margin-top: 30px;">                
                <form method="post" action="<%=request.getContextPath() + "/controller?action=location"%>">
                    <input type="hidden" id="sportId" name="sportId" value="Volleyball"/>
                    <button type="submit" class="btn btn-success" style="width: 25%; margin-left: auto;margin-right: auto;">Volleyball</button>  
                </form>
            </div>
                <div  style="text-align: center;margin-top: 30px;">                
                <form method="post" action="<%=request.getContextPath() + "/controller?action=location"%>">
                    <input type="hidden" id="sportId" name="sportId" value="Football"/>
                    <button type="submit" class="btn btn-success" style="width: 25%; margin-left: auto;margin-right: auto;">Football</button>  
                </form>
            </div>
                <div  style="text-align: center;margin-top: 30px;">                
                <form method="post" action="<%=request.getContextPath() + "/controller?action=location"%>">
                    <input type="hidden" id="sportId" name="sportId" value="Baseball"/>
                    <button type="submit" class="btn btn-success" style="width: 25%; margin-left: auto;margin-right: auto;">Baseball</button>  
                </form>
            </div>
                <div  style="text-align: center;margin-top: 30px;">                
                <form method="post" action="<%=request.getContextPath() + "/controller?action=location"%>">
                    <input type="hidden" id="sportId" name="sportId" value="Tennis"/>
                    <button type="submit" class="btn btn-success" style="width: 25%; margin-left: auto;margin-right: auto;">Tennis</button>  
                </form>
            </div>
            </article>
        </body>
