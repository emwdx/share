<!DOCTYPE html>
<html lang="en">

<head>
<title>ShareApp</title>
<link rel="stylesheet" type="text/css" href="/static/bootstrap/css/bootstrap.css">
</head>
<div class="hero-unit">
  <h1>I bet you have a question you'd like to ask the group.</h1>
 <p>Ask it below.</p>
</div>

<form action = "/share/" method = "POST" class = "form-horizontal">

What is your question?
<input type = "text" name = "question"  />

<button type = "submit" class = "btn">Make my page!</button>
</form>
</html>
