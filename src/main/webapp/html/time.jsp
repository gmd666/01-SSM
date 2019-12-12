<%--
  Created by IntelliJ IDEA.
  User: MaiBenBen
  Date: 2019/12/7
  Time: 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>选择日期</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<body onload="fload()" bgcolor='#EFEFEF'>
<script src="../js/date.js">
</script>

<script>
    function fload()
    {
        fPopCalendar(document.all.txt1, document.all.txt1);
    }

    function fkeydown()
    {
        if(event.keyCode==27)
        {
            event.returnValue = null;
            window.returnValue = null;
            window.close ();
        }
    }

    document.onkeydown=fkeydown;
</script>
<input type=text id="txt1" style="display:none">
</body>
</html>

</body>
</html>
