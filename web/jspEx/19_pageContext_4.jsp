<%@ page language="java" contentType="text/html;charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE> pageContext 객체 </TITLE>
</HEAD>
<BODY>

<%
pageContext.setAttribute("pageValue","pageContext Example");

Object cobe = pageContext.getAttribute("pageValue");
           if(cobe != null){
                     String strValue = (String)cobe;
                     out.println("page Value = " + strValue + "<BR>");
           }
           else{
                     out.println("Not found!!");
           }
%>

</BODY>
</HTML>