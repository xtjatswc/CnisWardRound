<%@ Page Language="C#" AutoEventWireup="true" CodeFile="saleDetail.aspx.cs" Inherits="tab_saleDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <link href="../css/tab.css" rel="stylesheet" />

    <script src="../js/tab.js"></script>
    <script src="../My97DatePicker/WdatePicker.js"></script>
    <script src="../js/common.js"></script>
</head>
<body>
    <form runat="server">
        <br />
        <font color="red"> - 按缴费日期查询：</font>
        <input class="Wdate" id="txtBeginDate" runat="server" type="text" onclick="WdatePicker()">
        &nbsp;&nbsp;       
        <asp:Button runat="server" ID="btnSearch" Text=" 查 询 " OnClick="btnSearch_Click" />         
        <asp:Button runat="server" ID="Button1" Text=" 前一天 " OnClick="Button1_Click" />
        <asp:Button runat="server" ID="Button2" Text=" 后一天 " OnClick="Button2_Click" />
    </form>
    <table id="tbl" width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td height="30" background="images/tab_05.gif">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="12" height="30">
                            <img src="images/tab_03.gif" width="12" height="30" /></td>
                        <td>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="46%" valign="middle">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="5%">
                                                    <div align="center">
                                                        <img src="images/tb.gif" width="16" height="16" />
                                                    </div>
                                                </td>
                                                <td width="95%" class="STYLE1"><span class="STYLE3"><%=txtBeginDate.Value %>&nbsp;&nbsp;共缴费：<%=totalMoney %></span></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="54%">
                                        <table border="0" align="right" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="60">
                                                    <table width="87%" border="0" cellpadding="0" cellspacing="0">
                                                        <%--                  <tr>
                    <td class="STYLE1"><div align="center">
                      <input type="checkbox" name="checkbox62" value="checkbox" />
                    </div></td>
                    <td class="STYLE1"><div align="center">全选</div></td>
                  </tr>--%>
                                                    </table>
                                                </td>
                                                <td width="60">
                                                    <table width="90%" border="0" cellpadding="0" cellspacing="0">
                                                        <%--                  <tr>
                    <td class="STYLE1"><div align="center"><img src="images/22.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center">新增</div></td>
                  </tr>--%>
                                                    </table>
                                                </td>
                                                <td width="60">
                                                    <table width="90%" border="0" cellpadding="0" cellspacing="0">
                                                        <%--                  <tr>
                    <td class="STYLE1"><div align="center"><img src="images/33.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center">修改</div></td>
                  </tr>--%>
                                                    </table>
                                                </td>
                                                <td width="52">
                                                    <table width="88%" border="0" cellpadding="0" cellspacing="0">
                                                        <%--                  <tr>
                    <td class="STYLE1"><div align="center"><img src="images/11.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center">删除</div></td>
                  </tr>--%>
                                                    </table>


                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="16">
                            <img src="images/tab_07.gif" width="16" height="30" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="8" background="images/tab_12.gif">&nbsp;</td>
                        <td>
                            <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()" onmouseout="changeback()">
                                <tr>
                                    <td height="22" background="images/bg.gif" bgcolor="#FFFFFF">
                                        <div align="center"><span class="STYLE1">科室</span></div>
                                    </td>
                                    <td height="22" background="images/bg.gif" bgcolor="#FFFFFF">
                                        <div align="center"><span class="STYLE1">患者姓名</span></div>
                                    </td>
                                    <td background="images/bg.gif" bgcolor="#FFFFFF">
                                        <div align="center"><span class="STYLE1">医嘱类型</span></div>
                                    </td>
                                    <td height="22" background="images/bg.gif" bgcolor="#FFFFFF">
                                        <div align="center"><span class="STYLE1">医嘱单号</span></div>
                                    </td>
                                    <td height="22" background="images/bg.gif" bgcolor="#FFFFFF">
                                        <div align="center"><span class="STYLE1">类型</span></div>
                                    </td>
                                    <td height="22" background="images/bg.gif" bgcolor="#FFFFFF">
                                        <div align="center"><span class="STYLE1">医嘱日期</span></div>
                                    </td>
                                    <td height="22" background="images/bg.gif" bgcolor="#FFFFFF">
                                        <div align="center"><span class="STYLE1">金额</span></div>
                                    </td>

                                    <td height="22" background="images/bg.gif" bgcolor="#FFFFFF">
                                        <div align="center"><span class="STYLE1">医嘱名称</span></div>
                                    </td>
                                    <td height="22" background="images/bg.gif" bgcolor="#FFFFFF">
                                        <div align="center"><span class="STYLE1">时间段</span></div>
                                    </td>
                                    <td height="22" background="images/bg.gif" bgcolor="#FFFFFF">
                                        <div align="center"><span class="STYLE1">医嘱单创建人</span></div>
                                    </td>
                                    <td height="22" background="images/bg.gif" bgcolor="#FFFFFF">
                                        <div align="center"><span class="STYLE1">医生</span></div>
                                    </td>
                                </tr>
                                <%
                                    string departmentName = "";
                                    string patientName = "";
                                    string NutrientAdviceSummaryDBKey = "";
                                    int nCount = 0;
                                    foreach (CNIS.Report.Model.SaleModel saleModel in listSaleModel)
                                    {  
                                %>
                                <tr>
                                    <%
                                        //科室
                                        if (departmentName != saleModel.DepartmentName)
                                        {
                                            departmentName = saleModel.DepartmentName;
                                    %>
                                    <td height="20" bgcolor="#FFFFFF" rowspan="<%=listSaleModel.Count(o=>o.DepartmentName == departmentName) %>">
                                        <div align="center"><span class="STYLE1"><%=saleModel.DepartmentName %></span></div>
                                    </td>
                                    <%
                                        }
                                    %>

                                    <%
                                        //患者姓名
                                        if (patientName != saleModel.PatientName)
                                        {
                                            patientName = saleModel.PatientName;
                                    %>
                                    <td height="20" bgcolor="#FFFFFF" rowspan="<%=listSaleModel.Count(o=>o.PatientName == patientName) %>">
                                        <div align="center"><span class="STYLE1"><%=saleModel.PatientName %></span></div>
                                    </td>
                                    <%
                                        }
                                    %>

                                    <%
                                        if (NutrientAdviceSummaryDBKey != saleModel.NutrientAdviceSummaryDBKey)
                                        {
                                            //NutrientAdviceSummaryDBKey = saleModel.NutrientAdviceSummaryDBKey;
                                            nCount = listSaleModel.Count(o => o.NutrientAdviceSummaryDBKey == saleModel.NutrientAdviceSummaryDBKey);

                                    %>
                                    <td bgcolor="#FFFFFF" rowspan="<%=nCount %>">
                                        <div align="center"><span class="STYLE1"><%=saleModel.AdviceType %></span></div>
                                    </td>

                                    <td height="20" bgcolor="#FFFFFF" rowspan="<%=nCount %>">
                                        <div align="center"><span class="STYLE1">
                                            <a href="http://<%=CNIS.Report.Common.Global.HOST %>/index.php?r=patient&ac=nutritioncasehistory/doctorin&did=<%=saleModel.NutrientAdviceSummaryDBKey %>" target="_blank">
                                            <%=saleModel.NutrientAdviceSummaryDBKey %></a>
                                            <%
                                            if (refundList.ContainsKey(saleModel.NutrientAdviceSummaryDBKey))
                                            {
                                                Response.Write("<a href='http://" + CNIS.Report.Common.Global.HOST + "/index.php?r=charges&ac=paymentrefund/printtui&did=" + refundList[saleModel.NutrientAdviceSummaryDBKey].NutrientAdviceDBKeys + "' target='_blank'>(退费" + Math.Round( refundList[saleModel.NutrientAdviceSummaryDBKey].RefundMoney,2) + "元)</a>");
                                            }
                                                 %>


                                                            </span></div>
                                    </td>
                                    <td height="20" bgcolor="#FFFFFF" rowspan="<%=nCount %>">
                                        <div align="center"><span class="STYLE1"><%=saleModel.AdviceType1 %></span></div>
                                    </td>

                                    <td height="20" bgcolor="#FFFFFF" rowspan="<%=nCount %>">
                                        <div align="center"><span class="STYLE1"><%=saleModel.AdviceDate %></span></div>
                                    </td>
                                    <td height="20" bgcolor="#FFFFFF" rowspan="<%=nCount %>">
                                        <div align="center"><span class="STYLE1"><%=listSaleModel.Where(o => o.NutrientAdviceSummaryDBKey == saleModel.NutrientAdviceSummaryDBKey).Sum(o=>o.TotalMoney) %></span></div>
                                    </td>

                                    <%
                                        }
                                    %>

                                    <td height="20" bgcolor="#FFFFFF">
                                        <div align="center"><span class="STYLE1"><%=saleModel.RecipeAndProductName %></span></div>
                                    </td>
                                    <td height="20" bgcolor="#FFFFFF">
                                        <div align="center"><span class="STYLE1"><%=saleModel.TakeOrder %></span></div>
                                    </td>


                                    <%
                                        if (NutrientAdviceSummaryDBKey != saleModel.NutrientAdviceSummaryDBKey)
                                        {
                                            NutrientAdviceSummaryDBKey = saleModel.NutrientAdviceSummaryDBKey;
                                            nCount = listSaleModel.Count(o => o.NutrientAdviceSummaryDBKey == NutrientAdviceSummaryDBKey);

                                    %>
                                    <td height="20" bgcolor="#FFFFFF" rowspan="<%=nCount %>">
                                        <div align="center"><span class="STYLE1"><%=saleModel.AdviceCreator %></span></div>
                                    </td>
                                    <td height="20" bgcolor="#FFFFFF" rowspan="<%=nCount %>">
                                        <div align="center"><span class="STYLE1"><%=saleModel.Clinicist %></span></div>
                                    </td>

                                    <%
                                        }
                                    %>
                                </tr>
                                <%
                                    }
                                %>
                            </table>
                        </td>
                        <td width="8" background="images/tab_15.gif">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td height="35" background="images/tab_19.gif">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="12" height="35">
                            <img src="images/tab_18.gif" width="12" height="35" /></td>
                        <td>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <%--            <td class="STYLE4">&nbsp;&nbsp;共有 120 条记录，当前第 1/10 页</td>
            <td><table border="0" align="right" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="40"><img src="images/first.gif" width="37" height="15" /></td>
                  <td width="45"><img src="images/back.gif" width="43" height="15" /></td>
                  <td width="45"><img src="images/next.gif" width="43" height="15" /></td>
                  <td width="40"><img src="images/last.gif" width="37" height="15" /></td>
                  <td width="100"><div align="center"><span class="STYLE1">转到第
                    <input name="textfield" type="text" size="4" style="height:12px; width:20px; border:1px solid #999999;" /> 
                    页 </span></div></td>
                  <td width="40"><img src="images/go.gif" width="37" height="15" /></td>
                </tr>
            </table></td>--%>
                                </tr>
                            </table>
                        </td>
                        <td width="16">
                            <img src="images/tab_20.gif" width="16" height="35" /></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    <script>
        //common.autoRowSpan(document.getElementById( "tbl"), 0, 0);

    </script>

</body>
</html>
