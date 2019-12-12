<%--
  Created by IntelliJ IDEA.
  User: mengdiguo
  Date: 2019/12/7
  Time: 12:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>栏目管理</title>
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
    <script src="http://www.jq22.com/jquery/1.11.1/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
    <script>
        function tianjia()
        {
            var str = confirm("是否确定添加此栏目？");
            if(str == true) {
               var form = $("#form1").serialize();
                if (form == null) alert("内容不能为空");
            }
            else {
                alert("取消添加！");
            }
        }
    </script>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<center>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td height="25" align="center" valign="bottom" class="td06"> <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="2%" valign="middle" background="${pageContext.request.contextPath}/images/bg_03.gif">&nbsp;</td>
                    <td width="2%" valign="middle" background="${pageContext.request.contextPath}/images/bg_03.gif"><img src="${pageContext.request.contextPath}/images/main_28.gif" width="9" height="9" align="absmiddle"></td>
                    <td height="30" valign="middle" background="${pageContext.request.contextPath}/images/bg_03.gif"><div align="left"><font color="#FFFFFF">栏目添加</font></div></td>
                </tr>
            </table></td>
        </tr>
    </table>
    <form name="form1" method="post" action="${pageContext.request.contextPath}/labelAdd2.do">
        <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="table01">
            <tr>
                <td colspan="2" class="td_02" align="center">栏目添加</td>
            </tr>
            <tr>
                <td width="14%" class="td_02">栏目名称</td>
                <td width="86%" class="td_02"><input name="labelName" type="text" class="input" style="width:99% "/></td>
            </tr>
            <tr>
                <td class="td_02">上级栏目名称</td>
                <td class="td_02">
                    <select name="pid" class="input" style="width:99% ">
                        <option value="0" selected>--请选择--</option>
                        <c:forEach items="${labelList}" var="label">
                            <option value="${label.id}">${label.labelName}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="td_02">栏目描述</td>
                <td class="td_02"><textarea name="labelContent" rows="5" style="width:99% "></textarea>
                </td>
            </tr>
        </table><br>
        <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td class="td_page"><div align="center">
                    <input name="Submit" type="submit" class="buttonface02" value="  添 加  ">
                    &nbsp;&nbsp;
                    <input name="Submit" type="reset" class="buttonface02" value="  重 置  ">
                    &nbsp;&nbsp;
                    <input name="Submit" type="reset" class="buttonface02" value="  关 闭  " onClick="window.close()">
                </div></td>
            </tr>
        </table>
        <br>
    </form>
</center>
</body>
</html>
