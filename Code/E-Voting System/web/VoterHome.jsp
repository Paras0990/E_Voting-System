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
                <li><a href="VoterHome.jsp">Home</a></li>
                
                <li><a href="VoterViewParties.jsp">View Parties</a></li>
                 <li><a href="VoterViewCandidates.jsp">View Candidates</a></li>
              
                   <li><a href="index.html">Logout</a></li>
            </ul>
        </div>
        
        
        
        
        <div id="abstract">
            <%String username=(String)session.getAttribute("username");%>
            <img src="images/voter.png" align="right" width="350px" height="300px" style="margin-top:50px;">
            <h2><center>Welcome  <%=username%></center></h2>
            
        </div>
    </body>
</html>
