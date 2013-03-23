<!DOCTYPE html>
<html lang="en">

<head>
<title>ShareApp</title>
<link rel="stylesheet" type="text/css" href="/static/bootstrap/css/bootstrap.css">
</head>
<body>
<div class="hero-unit">
  <h1>These are the questions that are being asked right now:</h1>
 
</div>
<h4>
<table class="table table-bordered table-hover">

%for row in roomList:
    <tr><td>Question</td><td>Asking Page:</td><td>Results Page</td></tr>
    <tr><td>
    <p class = "lead">{{row[0]}}</p></td>
    <td><a href = "/share/{{row[1]}}/">/{{row[1]}}/</a></td>
    <td><a href = "/share/{{row[1]}}/record/">/share/{{row[1]}}/record/</a></tr>
%end
</table>
</h4>
</body>
</html>

