<jsp:include page="header.jsp" />
<article style="width: 90%;">
    <div  style="text-align: left;margin-top: 30px;">                
        
            <button type="submit" class="btn btn-danger  pad_3" style="width:10%;margin-right: auto;">BOOKED</button> 
            <button type="submit" class="btn btn-success  pad_3" style="width:10%;margin-right: auto;">AVAILABLE</button>
          
    </div>
    
    <div  style="text-align: center;margin-top: 30px;"> 
        <form method="post" action="sacdetails.jsp">
            <br><br>
            <button type="submit" class="btn btn-danger" style="width: 15%; margin-left: auto;margin-right: auto;">9-10 AM</button>  
        </form>
    </div>
    <div  style="text-align: center;margin-top: 30px;"> 
        <form method="post" action=votezController?action=listofcandidates>
            <button type="submit" class="btn btn-success" style="width: 15%; margin-left: auto;margin-right: auto;">10 -11 AM</button>

        </form>
    </div>
    <div  style="text-align: center;margin-top: 30px;">                
        <form method="post" action="location.jsp">
            <button type="submit" class="btn btn-danger" style="width: 15%; margin-left: auto;margin-right: auto;">11-12 PM</button>  
        </form>
    </div>
    <div  style="text-align: center;margin-top: 30px;">                
        <form method="post" action="location.jsp">
            <button type="submit" class="btn btn-danger" style="width: 15%; margin-left: auto;margin-right: auto;"> 4-5 PM</button>  
        </form>
    </div>
    <div  style="text-align: center;margin-top: 30px;">                
        <form method="post" action="location.jsp">
            <button type="submit" class="btn btn-success" style="width: 15%; margin-left: auto;margin-right: auto;"> 5-6 PM</button>  
        </form>
    </div>
    <div  style="text-align: center;margin-top: 30px;">                
        <form method="post" action="location.jsp">
            <button type="submit" class="btn btn-success" style="width: 15%; margin-left: auto;margin-right: auto;">6-7 PM</button>  
        </form>
    </div>
    <div  style="text-align: center;margin-top: 30px;">                
        <form method="post" action="location.jsp">
            <button type="submit" class="btn btn-success" style="width: 15%; margin-left: auto;margin-right: auto;">7-8 PM</button>  
        </form>
    </div>

</article>
<script>
    function myFunction() {
        confirm("Would you book a slot!");
    }
</script>
</body>

