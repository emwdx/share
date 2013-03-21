<!DOCTYPE html>
<html lang="en">

<head>
<title>ShareApp</title>
<link rel="stylesheet" type="text/css" href="/static/bootstrap/css/bootstrap.css">
</head>
<div class="hero-unit">
  <h1>{{question}}.</h1>
 <p>We'd love to know what you think about this.</p>
</div>

<form action = "/share/{{roomnumber}}/results/" method = "POST" class = "form-horizontal">
What is your name?
<input type = "text" name = "name" />
What is your response?
<input type = "text" name = "answer"  />

<button type = "submit" class = "btn">Submit my response.</button>
</form>
</html>
