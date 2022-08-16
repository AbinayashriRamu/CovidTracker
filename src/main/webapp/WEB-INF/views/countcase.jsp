<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
.progress{
  position: relative;
  margin: 4px;
  float:left;
  text-align: center;
}
.barOverflow{ /* Wraps the rotating .bar */
  position: relative;
  width: 180px; height: 90px; /* Half circle (overflow) */
  margin-bottom: -14px; /* bring the numbers up */
  overflow: hidden;
}
.bar{
  position: absolute;
  top: 0; left: 0;
  width: 180px; height: 180px; /* full circle! */
  border-radius: 50%;
  box-sizing: border-box;
  border: 10px solid #ccc;     /* half gray, */
  border-bottom-color: #0bf;  /* half azure */
  border-right-color: #0bf;
}


</style>
<meta charset="ISO-8859-1">
<title>Count Case</title>
</head>
<body>
    <div class="progress">
          <div class="barOverflow">
            <div class="bar"></div>
          </div>
          <span>10</span>%
        </div>
 
        <div class="progress">
          <div class="barOverflow">
            <div class="bar"></div>
          </div>
          <span>100</span>%
        </div>
 
        <div class="progress">
          <div class="barOverflow">
            <div class="bar"></div>
          </div>
          <span>34</span>%
        </div>
 
        <div class="progress">
          <div class="barOverflow">
            <div class="bar"></div>
          </div>
          <span>56.5</span>%
        </div>
          </div>

</body>
</html>