<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>E-Voting System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css" />
        <style>
            
#abstract
{
    width:80%;
    height:400px;
 
}
        </style>
    </head>
    <body>
        <div id="title">E-Voting System</div>
        <div id="menu">
            <ul>
                <li><a href="AdminHome.jsp">Home</a></li>
                <li><a href="ViewVoters.jsp">View Voters</a></li>
                <li><a href="ViewParties.jsp">View Parties</a></li>
                 <li><a href="ViewCandidates.jsp">View Candidates</a></li>
                <li><a href="ViewVotes.jsp">View Vote's</a></li>
                   <li><a href="index.html">Logout</a></li>
            </ul>
        </div>
        
        
        
        
        <div id="abstract">
            <%String username=(String)session.getAttribute("username");%>
            <h2><center>Welcome  <%=username%></center></h2>
            <center><h2>View Candidates Details</h2></center>
                        <%@page import="java.sql.*" %>
            <%
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/evoting","root","root");
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select *from candidate ");
                    %>
                    <table border="2px" align="center">
                        <tr>
                              
                            <th>Party Name</th>
                              <th>Candidate  Id</th>
                              <th>First Name</th>
                              <th>Last Name</th>
                             
                                <th> Email Id </th>
                                  <th> mobile Number</th>
                                    
                                      <th>Address</th>
                                      <th>Gender</th>
                                      <th>Aadhar Number</th>
                                          <th>Username</th>
                                          <th>constituency</th>
                                            <th>Image</th>
                                                 <th>Status</th>
                                                
                        </tr>
                        <%while(rs.next())
                        {
                            %>
                            <tr>
                                <td><%=rs.getString(1)%></td>
                                 <td><%=rs.getString(2)%></td>
                                  <td><%=rs.getString(3)%></td>
                                   <td><%=rs.getString(4)%></td>
                                    <td><%=rs.getString(5)%></td>
                                     <td><%=rs.getString(6)%></td>
                                        <td><%=rs.getString(7)%></td>
                                           <td><%=rs.getString(8)%></td>
                                              <td><%=rs.getString(9)%></td>
                                                 <td><%=rs.getString(11)%></td>
                                    
                                     <td><%=rs.getString(12)%></td>
                                          <td><image src="cview.jsp?cid=<%=rs.getString(2)%>" width="100" height="100"></td>
                                          <td><%=rs.getString(14)%></td>
                                          
                            </tr>
                        <%}
}
catch(Exception e)
{
out.println(e);
}
%>
                    </table>
                
            
        </div>
    </body>
</html>
