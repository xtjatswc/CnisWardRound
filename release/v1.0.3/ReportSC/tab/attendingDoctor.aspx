<%@ Page Language="C#" AutoEventWireup="true" CodeFile="attendingDoctor.aspx.cs" Inherits="attendingDoctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <link href="../css/tab.css" rel="stylesheet" />

    <script src="../js/tab.js"></script>
    <script src="../js/FusionCharts.js"></script>
    <script src="../My97DatePicker/WdatePicker.js"></script>
</head>
<body>
    <br />
    <form runat="server">
                     <font color=red> - 按缴费日期查询：</font>
    开始日期
<input class="Wdate" id="txtBeginDate" runat="server" type="text" onClick="WdatePicker()">
      &nbsp;&nbsp;          截止日期
<input class="Wdate" id="txtEndDate" runat="server" type="text" onClick="WdatePicker()"> 
    <asp:Button runat="server" ID="btnSearch" Text=" 查 询 " OnClick="btnSearch_ServerClick" />
        &nbsp;&nbsp; 
    <asp:Button runat="server" ID="btnToday" Text=" 查今天 " OnClick="btnToday_Click" />
    <asp:Button runat="server" ID="btnYestoday" Text=" 查昨天 " OnClick="btnYestoday_Click" />
    <table>
        </form>
        <tr>
            <td>

                
<table  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="images/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" class="STYLE1"><span class="STYLE3">按医生统计销售量</span></td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="60"><table width="87%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center">
<%--                      <input type="checkbox" name="checkbox62" value="checkbox" />--%>
                    </div></td>
                    <td class="STYLE1"><%--<div align="center">全选</div>--%></td>
                  </tr>
                </table></td>
                <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><%--<div align="center"><img src="images/22.gif" width="14" height="14" />--%></div></td>
                    <td class="STYLE1"><%--<div align="center">新增</div>--%></td>
                  </tr>
                </table></td>
                <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><%--<div align="center"><img src="images/33.gif" width="14" height="14" />--%></div></td>
                    <td class="STYLE1"><%--<div align="center">修改</div>--%></td>
                  </tr>
                </table></td>
                <td width="52"><table width="88%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><%--<div align="center"><img src="images/11.gif" width="14" height="14" /></div>--%></td>
                    <td class="STYLE1"><%--<div align="center">删除</div>--%></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="images/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="images/tab_12.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()">
          <tr>
            <td width="12%" height="22" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">科室</span></div></td>
            <td width="12%" height="22" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">医生</span></div></td>
            <td width="14%" height="22" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">销售额</span></div></td>
          </tr>
            <asp:Repeater runat="server" ID="rptProductSale">
                <ItemTemplate>
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%#Eval("DepartmentName") %></span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%#Eval("Clinicist") %></span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%#Eval("TotalMoney") %> </span></div></td>
          </tr>

                </ItemTemplate>

            </asp:Repeater>
         
        </table></td>
        <td width="8" background="images/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="35" background="images/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="images/tab_18.gif" width="12" height="35" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td class="STYLE4">&nbsp;&nbsp;<%--共有 120 条记录，当前第 1/10 页--%>总计：<%=totalMoney %> 元</td>
            <td>

            </td>
          </tr>

        </table></td>
        <td width="16"><img src="images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>

                            </td>

        </tr>
    </table>


</body>
</html>
