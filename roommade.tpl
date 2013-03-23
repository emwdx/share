<!DOCTYPE html>
<html lang="en">

<head>
<title>ShareApp</title>
<link rel="stylesheet" type="text/css" href="/static/bootstrap/css/bootstrap.css">
</head>
<div class="hero-unit">
  <h1>{{question}}</h1>
 <p>There's your question. Now let's see what people think.</p>
</div>

<h4 class = "text-info">Send people this link: /share/{{roomnumber}}/ </h4>

<form action = "/share/{{roomnumber}}/" method = "GET" class = "form-horizontal">

<button type = "submit" class = "btn">Collect responses</button>
</form>
</html>
