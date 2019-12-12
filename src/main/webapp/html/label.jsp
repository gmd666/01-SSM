<%--
  Created by IntelliJ IDEA.
  User: MaiBenBen
  Date: 2019/12/7
  Time: 12:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <title>角色管理</title>
    <script type="text/javascript" language="JavaScript1.2" src="../js/stm31.js"></script>
    <SCRIPT language=javascript src="../js/tree2.js"></SCRIPT>
    <script language=javascript>
        function secBoard(n)
        {
            for(i=0;i<secTable.cells.length;i++)
                secTable.cells[i].className="sec1";
            secTable.cells[n].className="sec2";
            for(i=0;i<mainTable.tBodies.length;i++)
                mainTable.tBodies[i].style.display="none";
            mainTable.tBodies[n].style.display="block";
        }
    </script>
    <link href="../css/style.css" rel="stylesheet" type="text/css">
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<center>
    <table width="95%"  border="0" cellspacing="2" cellpadding="0">
        <tr>
            <td class="td_title">角色权限信息</td>
        </tr>
    </table>
    <table width="95%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="480"><table width="480" border="0" cellpadding="0" cellspacing="0" id=secTable>
                <tr align="center">
                    <td width="120" height="25" class="sec2" onClick="secBoard(0)">按天日程</td>
                    <td width="120" class="sec1" onClick="secBoard(1)">按周日程</td>
                    <td width="120" class="sec1" onClick="secBoard(2)">按月日程</td>
                </tr>
            </table></td>
            <td class="sec3">&nbsp;</td>
        </tr>
    </table>
    <table border="0" cellspacing="0" cellpadding="0" width="95%" height="240" id=mainTable class="main_tab">
        <tbody style="display:block;">
        <tr>
            <td align="center" valign=top><table width="95%"  border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td height="30" align="right" valign="bottom"><input name="Submit" type="submit" class="buttonface" value="  全选  ">
                        <input name="Submit" type="submit" class="buttonface" value="  保存  ">
                    </td>
                </tr>
            </table>
                <table width="95%"  border="0" cellpadding="15" cellspacing="0" class="td_bottom">
                    <tr>
                        <td align="center" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="19"><img id="top_1" onClick="head('menu_1','top_1');" src="../../images/tree_03.gif" width="19" height="20"></td>
                                <td width="19"><img src="../../images/tree_31.gif" width="19" height="20"></td>
                                <td nowrap class="td04"><input type="checkbox" name="checkbox" value="checkbox">
                                    机构管理</td>
                            </tr>
                        </table>
                            <div id="menu_1" style="DISPLAY: none">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_31.gif" width="19" height="20"></td>
                                        <td nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                            机构维护</td>
                                    </tr>
                                </table>


                            </div>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="19"><img id="top_2" onClick="menu('menu_2','top_2');" src="../../images/tree_11.gif" width="19" height="20"></td>
                                    <td width="19"><img src="../../images/tree_31.gif" width="19" height="20"></td>
                                    <td nowrap class="td04"><input type="checkbox" name="checkbox" value="checkbox">
                                        BBS </td>
                                </tr>
                            </table>
                            <div id="menu_2" style="DISPLAY: none">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_31.gif" width="19" height="20"></td>
                                        <td nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                            BBS</td>
                                    </tr>
                                </table>
                            </div>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="19"><img id="top_3" onClick="menu('menu_3','top_3');" src="../../images/tree_11.gif" width="19" height="20"></td>
                                    <td width="19"><img src="../../images/tree_31.gif" width="19" height="20"></td>
                                    <td nowrap class="td04"><input type="checkbox" name="checkbox" value="checkbox">
                                        新闻申报</td>
                                </tr>
                            </table>
                            <div id="menu_3" style="DISPLAY: none">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_31.gif" width="19" height="20"></td>
                                        <td nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                            申报查看</td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_31.gif" width="19" height="20"></td>
                                        <td nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                            申报查询</td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_31.gif" width="19" height="20"></td>
                                        <td nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                            申报统计</td>
                                    </tr>
                                </table>

                            </div>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="19"><img id="top_4" onClick="menu('menu_4','top_4');" src="../../images/tree_11.gif" width="19" height="20"></td>
                                    <td width="19"><img src="../../images/tree_31.gif" width="19" height="20"></td>
                                    <td nowrap class="td04"><input type="checkbox" name="checkbox" value="checkbox">
                                        工作流程</td>
                                </tr>
                            </table>
                            <div id="menu_4" style="DISPLAY: none">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_31.gif" width="19" height="20"></td>
                                        <td nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                            启动流程</td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_31.gif" width="19" height="20"></td>
                                        <td nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                            待办事宜</td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_30.gif" width="19" height="20"></td>
                                        <td nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                            手续监控</td>
                                    </tr>
                                </table>

                            </div>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="19"><img id="top_5" onClick="menu('menu_5','top_5');" src="../../images/tree_11.gif" width="19" height="20"></td>
                                    <td width="19"><img src="../../images/tree_31.gif" width="19" height="20"></td>
                                    <td nowrap class="td04"><input type="checkbox" name="checkbox" value="checkbox">
                                        权限管理</td>
                                </tr>
                            </table>
                            <div id="menu_5" style="DISPLAY: none">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_30.gif" width="19" height="20"></td>
                                        <td nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                            角色管理</td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_30.gif" width="19" height="20"></td>
                                        <td nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                            用户管理</td>
                                    </tr>
                                </table>


                            </div>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="19"><img id="top_7" onClick="third('menu_7','top_7');" src="../../images/tree_17.gif" width="19" height="20"></td>
                                    <td width="19"><img src="../../images/tree_31.gif" width="19" height="20"></td>
                                    <td nowrap class="td04"><input type="checkbox" name="checkbox" value="checkbox">
                                        系统管理</td>
                                </tr>
                            </table>
                            <div id="menu_7" style="DISPLAY: none">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19">&nbsp;</td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_31.gif" width="19" height="20"></td>
                                        <td nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                            指标管理</td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19">&nbsp;</td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_31.gif" width="19" height="20"></td>
                                        <td nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                            代码管理</td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19">&nbsp;</td>
                                        <td width="19"><img src="../../images/tree_23.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_30.gif" width="19" height="20"></td>
                                        <td nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                            日志管理</td>
                                    </tr>
                                </table>
                            </div></td>
                    </tr>
                </table>
                <br></td>
        </tr>
        </tbody>
        <tbody style="display:none;">
        <tr>
            <td align=center valign=top><table width="95%"  border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td height="30" align="right" valign="bottom"><input name="Submit" type="submit" class="buttonface" value="  全选  ">
                        <input name="Submit" type="submit" class="buttonface" value="  保存  ">
                    </td>
                </tr>
            </table>
                <table width="95%"  border="0" cellpadding="15" cellspacing="0" class="td_bottom">
                    <tr>

                        <td width="97%" align="center" valign="top" bgcolor="#FFFFFF">
                            <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td height="20" class="td04">　根据机构设置范围</td>
                                </tr>
                            </table>
                            <br>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="19"><img id="top_17" onClick="head('menu_17','top_17');" src="../../images/tree_03.gif" width="19" height="20"></td>
                                    <td width="19"><img src="../../images/tree_27.gif" width="19" height="20"></td>
                                    <td nowrap>部机关</td>
                                    <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                    </td>
                                </tr>
                            </table>
                            <div id="menu_17" style="DISPLAY: none">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>地区业务司</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>行政部门</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>党务部门</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_23.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>专业部门</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="19"><img id="top_18" onClick="menu('menu_18','top_18');" src="../../images/tree_11.gif" width="19" height="20"></td>
                                    <td width="19"><img src="../../images/tree_27.gif" width="19" height="20"></td>
                                    <td nowrap>部属</td>
                                    <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox"></td>
                                </tr>
                            </table>
                            <div id="menu_18" style="DISPLAY: none">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>服务中心</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>档案馆</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>国际问题研究所</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>世界知识出版社</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>外交学院</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>外交人员服务局</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>钓鱼台宾馆</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_23.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>外交学会</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="19"><img id="top_19" onClick="bottom('menu_19','top_19');" src="../../images/tree_29.gif" width="19" height="20"></td>
                                    <td width="19"><img src="../../images/tree_27.gif" width="19" height="20"></td>
                                    <td nowrap>驻外机构</td>
                                    <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox"></td>
                                </tr>
                            </table>
                            <div id="menu_19" style="DISPLAY: none">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19">&nbsp;</td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>亚洲地区</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19">&nbsp;</td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>西亚北非</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19">&nbsp;</td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>非洲地区</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19">&nbsp;</td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>欧亚地区</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19">&nbsp;</td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>西欧地区</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19">&nbsp;</td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>美大地区</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19">&nbsp;</td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>拉美地区</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19">&nbsp;</td>
                                        <td width="19"><img src="../../images/tree_23.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>国际机构</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                            </div></td>
                    </tr>
                </table>
                <br></td>
        </tr>
        </tbody>

        <tbody style="display:none;">
        <tr>
            <td align=center valign=top><table width="95%"  border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td height="30" align="right" valign="bottom"><input name="Submit" type="submit" class="buttonface" value="  全选  ">
                        <input name="Submit" type="submit" class="buttonface" value="  保存  ">
                    </td>
                </tr>
            </table>
                <table width="95%"  border="0" cellpadding="15" cellspacing="0" class="td_bottom">
                    <tr>

                        <td width="94%" align="center" valign="top" bgcolor="#FFFFFF">
                            <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td height="20" class="td04">　根据机构设置范围</td>
                                </tr>
                            </table>
                            <br>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="19"><img id="top_14" onClick="head('menu_14','top_14');" src="../../images/tree_03.gif" width="19" height="20"></td>
                                    <td width="19"><img src="../../images/tree_27.gif" width="19" height="20"></td>
                                    <td nowrap>部机关</td>
                                    <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                    </td>
                                </tr>
                            </table>
                            <div id="menu_14" style="DISPLAY: none">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>地区业务司</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>行政部门</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>党务部门</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_23.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>专业部门</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="19"><img id="top_15" onClick="menu('menu_15','top_15');" src="../../images/tree_11.gif" width="19" height="20"></td>
                                    <td width="19"><img src="../../images/tree_27.gif" width="19" height="20"></td>
                                    <td nowrap>部属</td>
                                    <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox"></td>
                                </tr>
                            </table>
                            <div id="menu_15" style="DISPLAY: none">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>服务中心</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>档案馆</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>国际问题研究所</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>世界知识出版社</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>外交学院</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>外交人员服务局</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>钓鱼台宾馆</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19"><img src="../../images/tree_06.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_23.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>外交学会</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="19"><img id="top_16" onClick="bottom('menu_16','top_16');" src="../../images/tree_29.gif" width="19" height="20"></td>
                                    <td width="19"><img src="../../images/tree_27.gif" width="19" height="20"></td>
                                    <td nowrap>驻外机构</td>
                                    <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox"></td>
                                </tr>
                            </table>
                            <div id="menu_16" style="DISPLAY: none">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19">&nbsp;</td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>亚洲地区</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19">&nbsp;</td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>西亚北非</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19">&nbsp;</td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>非洲地区</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19">&nbsp;</td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>欧亚地区</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19">&nbsp;</td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>西欧地区</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19">&nbsp;</td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>美大地区</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19">&nbsp;</td>
                                        <td width="19"><img src="../../images/tree_07.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>拉美地区</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19">&nbsp;</td>
                                        <td width="19"><img src="../../images/tree_23.gif" width="19" height="20"></td>
                                        <td width="19"><img src="../../images/tree_08.gif" width="19" height="20"></td>
                                        <td nowrap>国际机构</td>
                                        <td width="20" nowrap><input type="checkbox" name="checkbox" value="checkbox">
                                        </td>
                                    </tr>
                                </table>
                            </div></td>
                    </tr>
                </table>
                <br></td>
        </tr>
        </tbody>
        <tbody style="display:none;">
        <tr>
            <td align=center valign=top><table width="95%"  border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td height="30" valign="bottom">全选
                        <input type="radio" name="all" value="">
                        拒绝
                        <input type="radio" name="all" value="">
                        读
                        <input type="radio" name="all" value="">
                        改
                        <input type="radio" name="all" value="">
                        增
                        <input type="radio" name="all" value="">
                        删
                        <input type="radio" name="all" value="">
                        增删</td>
                    <td align="right" valign="bottom"><input name="Submit2" type="submit" class="buttonface" value="  保存  "></td>
                </tr>

            </table>
                <table width="95%"  border="0" cellpadding="15" cellspacing="0" class="td_bottom">
                    <tr>
                        <td align="center" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="19"><img id="top_8" onClick="head('menu_8','top_8');" src="../../images/tree_03.gif" width="19" height="20"></td>
                                <td width="19"><img src="../../images/tree_30.gif" width="19" height="20"></td>
                                <td width="387" nowrap class="td04">　人员基本情况子集</td>
                                <td width="263" nowrap class="td04"><input type="radio" name="radio01" value="">
                                    拒绝
                                    <input type="radio" name="radio01" value="">
                                    读
                                    <input type="radio" name="radio01" value="">
                                    改
                                    <input type="radio" name="radio01" value="">
                                    增
                                    <input type="radio" name="radio01" value="">
                                    删
                                    <input type="radio" name="radio01" value="">
                                    增删</td>
                            </tr>
                        </table>
                            <div id="menu_8" style="DISPLAY: none">
                                <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                                    <tr>

                                        <td width="19" background="../../images/tree_06.gif" height="114">&nbsp;</td>

                                        <td width="19" height="114">&nbsp;</td>

                                        <td height="114"><br>

                                            <table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="td01">
                                                <tr nowrap>
                                                    <td width="65" align="center" class="td02">姓　　名</td>
                                                    <td bgcolor="#FFFFFF">
                                                        <input type="radio" name="radio0101" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0101" value="">
                                                        读
                                                        <input type="radio" name="radio0101" value="">
                                                        改</td>
                                                    <td width="65" align="center" class="td02">曾&nbsp;&nbsp;用&nbsp;&nbsp;名</td>
                                                    <td bgcolor="#FFFFFF">
                                                        <input type="radio" name="radio0102" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0102" value="">
                                                        读
                                                        <input type="radio" name="radio0102" value="">
                                                        改</td>
                                                    <td width="65" align="center" class="td02">性　　别</td>
                                                    <td bgcolor="#FFFFFF">
                                                        <input type="radio" name="radio0103" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0103" value="">
                                                        读
                                                        <input type="radio" name="radio0103" value="">
                                                        改</td>
                                                </tr>
                                                <tr nowrap>
                                                    <td align="center" class="td02">民　　族</td>
                                                    <td bgcolor="#FFFFFF" >
                                                        <input type="radio" name="radio0104" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0104" value="">
                                                        读
                                                        <input type="radio" name="radio0104" value="">
                                                        改</td>
                                                    <td align="center" class="td02">籍　　贯</td>
                                                    <td bgcolor="#FFFFFF" >
                                                        <input type="radio" name="radio0105" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0105" value="">
                                                        读
                                                        <input type="radio" name="radio0105" value="">
                                                        改</td>
                                                    <td align="center" class="td02">血　　型</td>
                                                    <td bgcolor="#FFFFFF" >
                                                        <input type="radio" name="radio0106" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0106" value="">
                                                        读
                                                        <input type="radio" name="radio0106" value="">
                                                        改</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" class="td02">出&nbsp;&nbsp;生&nbsp;&nbsp;地</td>
                                                    <td bgcolor="#FFFFFF" >
                                                        <input type="radio" name="radio0107" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0107" value="">
                                                        读
                                                        <input type="radio" name="radio0107" value="">
                                                        改</td>
                                                    <td align="center" class="td02">单　　位</td>
                                                    <td bgcolor="#FFFFFF" >
                                                        <input type="radio" name="radio0108" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0108" value="">
                                                        读
                                                        <input type="radio" name="radio0108" value="">
                                                        改</td>
                                                    <td align="center" class="td02">所在部门</td>
                                                    <td bgcolor="#FFFFFF" >
                                                        <input type="radio" name="radio0109" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0109" value="">
                                                        读
                                                        <input type="radio" name="radio0109" value="">
                                                        改</td>
                                                </tr>
                                            </table>
                                            <br></td>
                                    </tr>
                                </table>
                            </div>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="19"><img id="top_9" onClick="menu('menu_9','top_9');" src="../../images/tree_11.gif" width="19" height="20"></td>
                                    <td width="19"><img src="../../images/tree_30.gif" width="19" height="20"></td>

                                    <td width="389" nowrap class="td04">　新闻申报子集</td>
                                    <td width="263" nowrap class="td04"><input type="radio" name="radio01" value="">
                                        拒绝
                                        <input type="radio" name="radio01" value="">
                                        读
                                        <input type="radio" name="radio01" value="">
                                        改
                                        <input type="radio" name="radio01" value="">
                                        增
                                        <input type="radio" name="radio01" value="">
                                        删
                                        <input type="radio" name="radio01" value="">
                                        增删</td>
                                </tr>
                            </table>
                            <div id="menu_9" style="DISPLAY: none">
                                <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19" background="../../images/tree_06.gif">&nbsp;</td>
                                        <td width="19">&nbsp;</td>
                                        <td><br>
                                            <table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="td01">
                                                <tr nowrap>
                                                    <td width="65" align="center" class="td02">人员编号</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0201" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0201" value="">
                                                        读
                                                        <input type="radio" name="radio0201" value="">
                                                        改</td>

                                                    <td width="65" align="center" class="td02">题目</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0202" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0202" value="">
                                                        读
                                                        <input type="radio" name="radio0202" value="">
                                                        改</td>

                                                    <td width="65" align="center" class="td02">媒体名称</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0203" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0203" value="">
                                                        读
                                                        <input type="radio" name="radio0203" value="">
                                                        改</td>
                                                </tr>
                                                <tr nowrap>

                                                    <td align="center" class="td02">版面</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0204" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0204" value="">
                                                        读
                                                        <input type="radio" name="radio0204" value="">
                                                        改</td>

                                                    <td align="center" class="td02">类型</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0205" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0205" value="">
                                                        读
                                                        <input type="radio" name="radio0205" value="">
                                                        改</td>

                                                    <td align="center" class="td02">形式</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0206" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0206" value="">
                                                        读
                                                        <input type="radio" name="radio0206" value="">
                                                        改</td>
                                                </tr>
                                                <tr>

                                                    <td align="center" class="td02">日期或刊数</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0207" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0207" value="">
                                                        读
                                                        <input type="radio" name="radio0207" value="">
                                                        改</td>
                                                    <td align="center" class="td02">&nbsp;</td>
                                                    <td bgcolor="#FFFFFF" >&nbsp;</td>
                                                    <td align="center" class="td02">&nbsp;</td>
                                                    <td bgcolor="#FFFFFF" >&nbsp;</td>
                                                </tr>
                                            </table>
                                            <br></td>
                                    </tr>
                                </table>
                            </div>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="19"><img id="top_10" onClick="menu('menu_10','top_10');" src="../../images/tree_11.gif" width="19" height="20"></td>
                                    <td width="19"><img src="../../images/tree_30.gif" width="19" height="20"></td>

                                    <td width="392" nowrap class="td04">　考勤管理子集</td>
                                    <td width="263" nowrap class="td04"><input type="radio" name="radio01" value="">
                                        拒绝
                                        <input type="radio" name="radio01" value="">
                                        读
                                        <input type="radio" name="radio01" value="">
                                        改
                                        <input type="radio" name="radio01" value="">
                                        增
                                        <input type="radio" name="radio01" value="">
                                        删
                                        <input type="radio" name="radio01" value="">
                                        增删</td>
                                </tr>
                            </table>
                            <div id="menu_10" style="DISPLAY: none">
                                <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19" background="../../images/tree_06.gif">&nbsp;</td>
                                        <td width="19">&nbsp;</td>
                                        <td><br>
                                            <table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="td01">
                                                <tr nowrap>
                                                    <td width="65" align="center" class="td02">人员编号</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0301" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0301" value="">
                                                        读
                                                        <input type="radio" name="radio0301" value="">
                                                        改</td>

                                                    <td width="65" align="center" class="td02">请假开始时间</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0302" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0302" value="">
                                                        读
                                                        <input type="radio" name="radio0302" value="">
                                                        改</td>

                                                    <td width="65" align="center" class="td02">请假结束时间</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0303" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0303" value="">
                                                        读
                                                        <input type="radio" name="radio0303" value="">
                                                        改</td>
                                                </tr>
                                                <tr nowrap>

                                                    <td align="center" class="td02">请假类别</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0304" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0304" value="">
                                                        读
                                                        <input type="radio" name="radio0304" value="">
                                                        改</td>

                                                    <td align="center" class="td02">请假是由</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0305" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0305" value="">
                                                        读
                                                        <input type="radio" name="radio0305" value="">
                                                        改</td>
                                                    <td align="center" class="td02">&nbsp;</td>
                                                    <td bgcolor="#FFFFFF" >&nbsp;</td>
                                                </tr>
                                            </table>
                                            <br></td>
                                    </tr>
                                </table>
                            </div>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="19"><img id="top_11" onClick="menu('menu_11','top_11');" src="../../images/tree_11.gif" width="19" height="20"></td>
                                    <td width="19"><img src="../../images/tree_30.gif" width="19" height="20"></td>

                                    <td width="390" nowrap class="td04">　工资信息子集</td>
                                    <td width="263" nowrap class="td04"><input type="radio" name="radio01" value="">
                                        拒绝
                                        <input type="radio" name="radio01" value="">
                                        读
                                        <input type="radio" name="radio01" value="">
                                        改
                                        <input type="radio" name="radio01" value="">
                                        增
                                        <input type="radio" name="radio01" value="">
                                        删
                                        <input type="radio" name="radio01" value="">
                                        增删</td>
                                </tr>
                            </table>
                            <div id="menu_11" style="DISPLAY: none">
                                <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19" background="../../images/tree_06.gif">&nbsp;</td>
                                        <td width="19">&nbsp;</td>
                                        <td><br>
                                            <table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="td01">
                                                <tr nowrap>
                                                    <td width="65" align="center" class="td02">人员编号</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0401" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0401" value="">
                                                        读
                                                        <input type="radio" name="radio0401" value="">
                                                        改</td>

                                                    <td width="65" align="center" class="td02">期号</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0402" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0402" value="">
                                                        读
                                                        <input type="radio" name="radio0402" value="">
                                                        改</td>

                                                    <td width="65" align="center" class="td02">基本工资</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0403" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0403" value="">
                                                        读
                                                        <input type="radio" name="radio0403" value="">
                                                        改</td>
                                                </tr>
                                                <tr nowrap>

                                                    <td align="center" class="td02">岗位工资</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0404" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0404" value="">
                                                        读
                                                        <input type="radio" name="radio0404" value="">
                                                        改</td>

                                                    <td align="center" class="td02">津贴</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0405" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0405" value="">
                                                        读
                                                        <input type="radio" name="radio0405" value="">
                                                        改</td>

                                                    <td align="center" class="td02">养老个人缴费</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0406" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0406" value="">
                                                        读
                                                        <input type="radio" name="radio0406" value="">
                                                        改</td>
                                                </tr>
                                                <tr>

                                                    <td align="center" class="td02">养老单位缴费</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0407" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0407" value="">
                                                        读
                                                        <input type="radio" name="radio0407" value="">
                                                        改</td>

                                                    <td align="center" class="td02">医疗个人缴费</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0408" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0408" value="">
                                                        读
                                                        <input type="radio" name="radio0408" value="">
                                                        改</td>

                                                    <td align="center" class="td02">医疗单位缴费</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0409" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0409" value="">
                                                        读
                                                        <input type="radio" name="radio0409" value="">
                                                        改</td>
                                                </tr>
                                                <tr>

                                                    <td align="center" class="td02">所扣税款</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0410" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0410" value="">
                                                        读
                                                        <input type="radio" name="radio0410" value="">
                                                        改</td>

                                                    <td align="center" class="td02">实发合计</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0411" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0411" value="">
                                                        读
                                                        <input type="radio" name="radio0411" value="">
                                                        改</td>
                                                    <td align="center" class="td02">&nbsp;</td>
                                                    <td bgcolor="#FFFFFF" >&nbsp;</td>
                                                </tr>
                                            </table>
                                            <br></td>
                                    </tr>
                                </table>
                            </div>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="19"><img id="top_12" onClick="menu('menu_12','top_12');" src="../../images/tree_11.gif" width="19" height="20"></td>
                                    <td width="19"><img src="../../images/tree_30.gif" width="19" height="20"></td>

                                    <td width="390" nowrap class="td04">　课题信息子集</td>
                                    <td width="263" nowrap class="td04"><input type="radio" name="radio01" value="">
                                        拒绝
                                        <input type="radio" name="radio01" value="">
                                        读
                                        <input type="radio" name="radio01" value="">
                                        改
                                        <input type="radio" name="radio01" value="">
                                        增
                                        <input type="radio" name="radio01" value="">
                                        删
                                        <input type="radio" name="radio01" value="">
                                        增删</td>
                                </tr>
                            </table>
                            <div id="menu_12" style="DISPLAY: none">
                                <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="19" background="../../images/tree_06.gif">&nbsp;</td>
                                        <td width="19">&nbsp;</td>
                                        <td><br>
                                            <table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="td01">
                                                <tr nowrap>

                                                    <td width="65" align="center" class="td02">课题编号</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0501" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0501" value="">
                                                        读
                                                        <input type="radio" name="radio0501" value="">
                                                        改</td>

                                                    <td width="65" align="center" class="td02">课题名称</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0502" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0502" value="">
                                                        读
                                                        <input type="radio" name="radio0502" value="">
                                                        改</td>

                                                    <td width="65" align="center" class="td02">课题类型</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0503" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0503" value="">
                                                        读
                                                        <input type="radio" name="radio0503" value="">
                                                        改</td>
                                                </tr>
                                                <tr nowrap>

                                                    <td align="center" class="td02">主题词</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0504" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0504" value="">
                                                        读
                                                        <input type="radio" name="radio0504" value="">
                                                        改</td>

                                                    <td align="center" class="td02">预计课题形式</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0505" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0505" value="">
                                                        读
                                                        <input type="radio" name="radio0505" value="">
                                                        改</td>

                                                    <td align="center" class="td02">申报时间</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0506" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0506" value="">
                                                        读
                                                        <input type="radio" name="radio0506" value="">
                                                        改</td>
                                                </tr>
                                                <tr>

                                                    <td align="center" class="td02">预计完成时间</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0507" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0507" value="">
                                                        读
                                                        <input type="radio" name="radio0507" value="">
                                                        改</td>

                                                    <td align="center" class="td02">课题委托单位</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0508" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0508" value="">
                                                        读
                                                        <input type="radio" name="radio0508" value="">
                                                        改</td>

                                                    <td align="center" class="td02">第一主持人姓名</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0509" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0509" value="">
                                                        读
                                                        <input type="radio" name="radio0509" value="">
                                                        改</td>
                                                </tr>
                                                <tr>

                                                    <td align="center" class="td02">课题组人数</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0510" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0510" value="">
                                                        读
                                                        <input type="radio" name="radio0510" value="">
                                                        改</td>

                                                    <td align="center" class="td02">内容摘要</td>
                                                    <td bgcolor="#FFFFFF" ><input type="radio" name="radio0511" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0511" value="">
                                                        读
                                                        <input type="radio" name="radio0511" value="">
                                                        改</td>
                                                    <td align="center" class="td02">&nbsp;</td>
                                                    <td bgcolor="#FFFFFF" >&nbsp;</td>
                                                </tr>
                                            </table>
                                            <br></td>
                                    </tr>
                                </table>
                            </div>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="19"><img id="top_13" onClick="third('menu_13','top_13');" src="../../images/tree_17.gif" width="19" height="20"></td>
                                    <td width="19"><img src="../../images/tree_30.gif" width="19" height="20"></td>

                                    <td width="390" nowrap class="td04">　课题成员子集</td>
                                    <td width="263" nowrap class="td04"><input type="radio" name="radio01" value="">
                                        拒绝
                                        <input type="radio" name="radio01" value="">
                                        读
                                        <input type="radio" name="radio01" value="">
                                        改
                                        <input type="radio" name="radio01" value="">
                                        增
                                        <input type="radio" name="radio01" value="">
                                        删
                                        <input type="radio" name="radio01" value="">
                                        增删</td>
                                </tr>
                            </table>
                            <div id="menu_13" style="DISPLAY: none">

                                <table width="100%"  border="0" cellspacing="0" cellpadding="0" height="36">
                                    <tr>

                                        <td width="19" height="56">&nbsp;</td>

                                        <td width="19" height="56">&nbsp;</td>

                                        <td height="56">
                                            <table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="td01">
                                                <tr nowrap>
                                                    <td width="65" align="center" class="td02">课题编号</td>
                                                    <td bgcolor="#FFFFFF" >
                                                        <input type="radio" name="radio06" value="">
                                                        拒绝
                                                        <input type="radio" name="radio06" value="">
                                                        读
                                                        <input type="radio" name="radio06" value="">
                                                        改</td>
                                                    <td width="65" align="center" class="td02">人员编号</td>
                                                    <td bgcolor="#FFFFFF" >
                                                        <input type="radio" name="radio0601" value="">
                                                        拒绝
                                                        <input type="radio" name="radio0601" value="">
                                                        读
                                                        <input type="radio" name="radio0601" value="">
                                                        改</td>
                                                    <td width="65" align="center" class="td02">&nbsp;</td>
                                                    <td bgcolor="#FFFFFF" >&nbsp; </td>
                                                </tr>
                                            </table>

                                        </td>
                                    </tr>
                                </table>
                            </div></td>
                    </tr>
                </table>
                <br></td>
        </tr>
        </tbody>
    </table>
    <br>
</center>
</body>
</html>

