<jsp:include page="header.jsp" />
<script>
    $(function () {
        $('#timeInputFieldFrom, #timeInputFieldTo').timepicker({'scrollDefault': 'now'});
    });

</script>
<article style="width: 90%;">
    <div  style="text-align: center;margin-top: 30px;">   
        </head>
        <body>
            <form method="post" action="<%=request.getContextPath() + "/controller?action=rentdetails"%>">
                <br>
                <span class="text_border size_text text_">Enter the timing slot that you want to book the equipment for</span><br>

                <label  for="from"><font color="white">From *</font></label>
                <input  placeholder="" type="text" size="5" name="from" required id="timeInputFieldFrom"/>  &nbsp;            


                <label for="to"><font color="white">To*</font></label>
                <input  placeholder="" type="text" size="5" name="to" required id="timeInputFieldTo"/>



                <br><br><br><br>
                <button type="submit" class="btn btn-success pad_3 " style="width: 25%; margin-left: auto;margin-right: auto;">Proceed</button>  <button class="btn btn-danger pad_3" style="width: 25%; margin-left: auto;margin-right: auto;" onclick=" window.history.back();">Back</button>
            </form>
