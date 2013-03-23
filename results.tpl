<!DOCTYPE html>
<html lang="en">

<head>
<title>ShareApp</title>
<link rel="stylesheet" type="text/css" href="/static/bootstrap/css/bootstrap.css">
</head>
<div class="hero-unit">
  <h1>{{question}}</h1>
  <p>Thank you for submitting!
These are the responses:</p>
</div>

<table class="table table-bordered table-hover">

%for row in results[1:]:
    <tr><td>
    <b>{{row[0]}}:</b> {{row[1]}}</tr>
%end
</table>

<form action = "/share/{{roomnumber}}/record/" method = "GET class = "form-horizontal">
<button type = "submit" class = "btn">Refresh the page.</button>
</form>
Add another response:
<form action = "/share/{{roomnumber}}/results/" method = "POST" class = "form-horizontal">
What is your name?
<input type = "text" name = "name" />
What is your response?
<input type = "text" name = "answer"  />

<button type = "submit" class = "btn">Submit my response.</button>
</form>
