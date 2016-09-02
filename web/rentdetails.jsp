<jsp:include page="header.jsp" />
<article style="width: 90%;">
    <div  style="text-align: center;margin-top: 30px;">   
        </head>
        <body>
            <form method="post" action="<%=request.getContextPath() + "/controller?action=confirmBooking_eqp"%>">
                
                <span class="text_border size_text  text_">Enter details</span><br>

                <label class="text_border bold_text justify_text inline" for="from"><font color="white">Badminton Rackets </font></label>
                           
                <select class="text_border inline justify_text"  name="answer">
                    <option name="" style="display:none">--Select--</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                </select>
                </br>
                </br> 

                <label class="text_border bold_text justify_text inline"  for="to"><font color="white">Shuttles</font></label>

                <select class="text_border justify_text inline" name="answer">
                    <option name="" style="display:none"> --Select--</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                </select>
                </br>
                </br>    
                <label class="text_border justify_text bold_text inline"  for="to"><font color="white">Basket Ball</font></label>

                <select class="text_border justify_text inline" name="answer">
                    <option name="" style="display:none">--Select--</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                </select>
                </br> 
                </br>
                <label class="text_border justify_text bold_text inline" for="to"><font color="white">Volley Ball</font></label>

                <select class="text_border justify_text inline" name="answer">
                    <option name="" style="display:none">--Select--</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                </select>
                </br>  
                </br> 
                <label class="text_border justify_text bold_text inline" for="to"><font color="white">Base Ball</font></label>

                <select class="text_border justify_text inline" lass="text_border bold_text inline" name="answer">
                    <option name="" style="display:none">--Select--</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                </select>
                </br>    
                </br> 

                <label class="text_border justify_text bold_text inline" for="to"><font color="white">Tennis Rackets</font></label>

                <select class="text_border justify_text inline" name="answer">
                    <option name="" style="display:none">--Select--</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
                </br> 
                </br> 
                <label class="text_border justify_text bold_text inline" for="to"><font color="white">Tennis Balls</font></label>

                <select class="text_border justify_text inline" name="answer">
                    <option name="" style="display:none">--Select--</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
                </br> 
                </br> 

                <label class="text_border justify_text bold_text inline" for="to"><font color="white">Baseball Bat</font></label>

                <select class="text_border justify_text inline" name="answer">
                    <option name="" style="display:none">--Select--</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>                                          
                </br>  
                </br>
                
                <li class="inline"> <input type="submit" class="btn btn-success" value="Proceed to Book" name="Proceed to Book" /></li>

            </form>
