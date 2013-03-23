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

<div class="row">
  <div class="span4 offset3"><p class = "lead">What is your question?</p></div>
  <div class="span5">
          <form action = "/share/" method = "POST" class = "form-horizontal">
        <input type = "text" name = "question"  class="input-large" placeholder="Enter your question here." />

        <button type = "submit" class = "btn">Make my page!</button>
        </form></div>
</div>

</div>
</div>
</div>
</html>
