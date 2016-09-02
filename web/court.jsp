<jsp:include page="header.jsp" />
<article style="width: 90%;">
    <div  style="text-align: left;margin-top: 30px;">                
        
            <button type="submit" class="btn btn-danger  pad_3" style="width:10%;margin-right: auto;">BOOKED</button> 
            <button type="submit" class="btn btn-success  pad_3" style="width:10%;margin-right: auto;">AVAILABLE</button>
          
    </div>
    
    <div  style="text-align: center;margin-top: 30px;"> 
        <form method="post" action="<%=request.getContextPath() + "/controller?action=confirmBooking_pg"%>">
            <br><br>
            <input type="hidden" id="location_val" name="confirm_val" value="Court"/>
            <input type="hidden" id="time_det" name="time_det" value="9 am to 10 am"/>
            <button type="submit" class="btn btn-success" style="width: 15%; margin-left: auto;margin-right: auto;">9-10 AM</button>  
        </form>
    </div>
    <div  style="text-align: center;margin-top: 30px;"> 
        <form method="post" action="<%=request.getContextPath() + "/controller?action=confirmBooking_pg"%>">
            <input type="hidden" id="location_val" name="confirm_val" value="Court"/>
            <input type="hidden" id="time_det" name="time_det" value="10 am to 11 am"/>
            <button type="submit" class="btn btn-success" style="width: 15%; margin-left: auto;margin-right: auto;">10 -11 AM</button>
        </form>
    </div>
    <div  style="text-align: center;margin-top: 30px;">                
        <form method="post" action="location.jsp">
            <input type="hidden" id="location_val" name="confirm_val" value="Court"/>
            <input type="hidden" id="time_det" name="time_det" value="11 am to 12 pm"/>
            <button type="submit" class="btn btn-danger" style="width: 15%; margin-left: auto;margin-right: auto;">11-12 PM</button>  
        </form>
    </div>
    <div  style="text-align: center;margin-top: 30px;">                
        <form method="post" action="location.jsp">
            <input type="hidden" id="location_val" name="confirm_val" value="Court"/>
            <input type="hidden" id="time_det" name="time_det" value="4 pm to 5 pm"/>
            <button type="submit" class="btn btn-danger" style="width: 15%; margin-left: auto;margin-right: auto;"> 4-5 PM</button>  
        </form>
    </div>
    <div  style="text-align: center;margin-top: 30px;">                
        <form method="post" action="location.jsp">
            <input type="hidden" id="location_val" name="confirm_val" value="Court"/>
            <input type="hidden" id="time_det" name="time_det" value="5 pm to 6 pm"/>
            <button type="submit" class="btn btn-success" style="width: 15%; margin-left: auto;margin-right: auto;"> 5-6 PM</button>  
        </form>
    </div>
    <div  style="text-align: center;margin-top: 30px;">                
        <form method="post" action="location.jsp">
            <input type="hidden" id="location_val" name="confirm_val" value="Court"/>
            <input type="hidden" id="time_det" name="time_det" value="6 pm to 7 pm"/>
            <button type="submit" class="btn btn-success" style="width: 15%; margin-left: auto;margin-right: auto;">6-7 PM</button>  
        </form>
    </div>
    <div  style="text-align: center;margin-top: 30px;">                
        <form method="post" action="location.jsp">
            <input type="hidden" id="location_val" name="confirm_val" value="Court"/>
            <input type="hidden" id="time_det" name="time_det" value="7 pm to 8 pm"/>
            <button type="submit" class="btn btn-success" style="width: 15%; margin-left: auto;margin-right: auto;">7-8 PM</button>  
        </form>
    </div>

</article>
<script>
    function myFunction() {
        if(confirm("Are you sure you want to book a slot!");
    }
</script>
</body>

