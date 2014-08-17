
<!DOCTYPE html>
<meta charset="utf-8">
<title>Opera 10.50 Styling Demo</title>

<style>
body {
  overflow-x: hidden;
  color: #334766;
  padding: 25px 0;
  text-align: center;
  font-family: "Helvetica Neue", arial, sans-serif;
  background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAYAAAAGBAMAAAAS4vJ7AAAAG1BMVEXS4erj7PHf6O3g6O729vby8vLx8fHh6u%2Fz8%2FOBUUhCAAAAIElEQVQIHWNgFFJkMAlJYShzaWMQS3Nh0EhzY1BxSQMAM84Ew1msm%2BsAAAAASUVORK5CYII%3D");
}

body > * {
  display: inline-block;
  text-align: left;
}

h1 {
  width: 100%;
  text-align: center;
}

#phone {
  background: #6f795e;
  width: 540px;
  height: 800px;
  color: #fff;
  font: 22px sans-serif;
  text-align: center;
  box-shadow: inset 50px -100px 100px #b2a184, inset 50px 100px 100px #44696d, inset -50px 100px 100px #63441d, inset 50px -100px 100px #415e54, inset 0 -200px 100px #3d436e;
  -o-box-shadow: inset 50px -100px 100px #b2a184, inset 50px 100px 100px #44696d, inset -50px 100px 100px #63441d, inset 50px -100px 100px #415e54, inset 0 -200px 100px #3d436e;
  -webkit-box-shadow: inset 50px -100px 100px #b2a184, inset 50px 100px 100px #44696d, inset -50px 100px 100px #63441d, inset 50px -100px 100px #415e54, inset 0 -200px 100px #3d436e;
  -moz-box-shadow: inset 50px -100px 100px #b2a184, inset 50px 100px 100px #44696d, inset -50px 100px 100px #63441d, inset 50px -100px 100px #415e54, inset 0 -200px 100px #3d436e;
  overflow: hidden;
}

#topbar {
  padding: 0 10px;
  text-align: right;
  line-height: 43px;
  width: 520px;
  height: 43px;
  background: #363636;
  box-shadow: inset 0 -22px 1px #000, inset 0 -25px 20px #111;
  -o-box-shadow: inset 0 -22px 1px #000, inset 0 -25px 20px #111;
  -webkit-box-shadow: inset 0 -22px 1px #000, inset 0 -25px 20px #111;
  -moz-box-shadow: inset 0 -22px 1px #000, inset 0 -25px 20px #111;
}

#topbox {
  margin: 32px 16px;
  height: 290px;
  background: rgba(0,0,0,0.33);
  border-radius: 18px;
  -webkit-border-radius: 18px;
  -moz-border-radius: 18px;
  box-shadow: inset 0 -180px rgba(0,0,0,0.25), inset 3px 3px 1px rgba(255,255,255,0.5), inset -3px -3px 1px rgba(0,0,0,0.33), inset 0 40px 50px rgba(255,255,255,0.66), 0 1px 20px rgba(0,0,0,0.5);
  -o-box-shadow: inset 0 -180px rgba(0,0,0,0.25), inset 3px 3px 1px rgba(255,255,255,0.5), inset -3px -3px 1px rgba(0,0,0,0.33), inset 0 40px 50px rgba(255,255,255,0.66), 0 1px 20px rgba(0,0,0,0.5);
  -webkit-box-shadow: inset 0 -180px rgba(0,0,0,0.25), inset 3px 3px 1px rgba(255,255,255,0.5), inset -3px -3px 1px rgba(0,0,0,0.33), inset 0 40px 50px rgba(255,255,255,0.66), 0 1px 20px rgba(0,0,0,0.5);
  -moz-box-shadow: inset 0 -180px rgba(0,0,0,0.25), inset 3px 3px 1px rgba(255,255,255,0.5), inset -3px -3px 1px rgba(0,0,0,0.33), inset 0 40px 50px rgba(255,255,255,0.66), 0 1px 20px rgba(0,0,0,0.5);
}

#topbox span {
  display: inline-block;
  width: 165px;
  text-align: center;
  padding: 15px 10px;
  font-size: 6em;
  background: #eee;
  color: #000;
  border-radius: 10px;
  -webkit-border-radius: 10px;
  -moz-border-radius: 10px;
  margin: -15px 20px 0 20px;
  border: 1px solid #ccc;
  box-shadow: inset 0 -2px 5px #fff, inset 0 20px 50px rgba(255,255,255,0.9), inset 0 -20px 50px rgba(0,0,0,0.33),
  0 2px #ccc, 0 4px #fff, 0 6px #aaa, 0 8px #fff, 0 10px #777,
  0 -2px #ccc, 0 -4px #fff, 0 -6px #aaa, 0 -8px #fff, 0 -10px #777, 0 0 10px #000;
  -o-box-shadow: inset 0 -2px 5px #fff, inset 0 20px 50px rgba(255,255,255,0.9), inset 0 -20px 50px rgba(0,0,0,0.33),
  0 2px #ccc, 0 4px #fff, 0 6px #aaa, 0 8px #fff, 0 10px #777,
  0 -2px #ccc, 0 -4px #fff, 0 -6px #aaa, 0 -8px #fff, 0 -10px #777, 0 0 10px #000;
  -webkit-box-shadow: inset 0 -2px 5px #fff, inset 0 20px 50px rgba(255,255,255,0.9), inset 0 -20px 50px rgba(0,0,0,0.33),
  0 2px #ccc, 0 4px #fff, 0 6px #aaa, 0 8px #fff, 0 10px #777,
  0 -2px #ccc, 0 -4px #fff, 0 -6px #aaa, 0 -8px #fff, 0 -10px #777, 0 0 10px #000;
  -moz-box-shadow: inset 0 -2px 5px #fff, inset 0 20px 50px rgba(255,255,255,0.9), inset 0 -20px 50px rgba(0,0,0,0.33),
  0 2px #ccc, 0 4px #fff, 0 6px #aaa, 0 8px #fff, 0 10px #777,
  0 -2px #ccc, 0 -4px #fff, 0 -6px #aaa, 0 -8px #fff, 0 -10px #777, 0 0 10px #000;
  }

#topbox p {
  text-shadow: 0 0 1px #000, 0 0 3px #000, 0 0 4px #000, 0 0 5px #000, 0 0 6px #000;
}

a {
  margin: 0 5px;
  margin-top: 175px;
  display: inline-block;
}

a img {
  width: 80px;
  height: 80px;
  background: rgba(255,0,0,0.5);
  border-radius: 64px;
  margin-bottom: 10px;
  box-shadow: inset 0 1px #fff, inset 0 -1px #000, inset 0 40px 40px #f00, 0 10px 10px rgba(0,0,0,0.5);
  -o-box-shadow: inset 0 1px #fff, inset 0 -1px #000, inset 0 40px 40px #f00, 0 10px 10px rgba(0,0,0,0.5);
  -webkit-box-shadow: inset 0 1px #fff, inset 0 -1px #000, inset 0 40px 40px #f00, 0 10px 10px rgba(0,0,0,0.5);
  -moz-box-shadow: inset 0 1px #fff, inset 0 -1px #000, inset 0 40px 40px #f00, 0 10px 10px rgba(0,0,0,0.5);
}

a span {
  background-color: rgba(0,0,0,0.5);
  color: #fff;
  text-shadow: 0 1px 1px #000;
  border: 0;
  border-radius: 15px;
  -webkit-border-radius: 15px;
  -moz-border-radius: 15px;
  padding: 5px 15px;
  font-size: 0.8em;
  letter-spacing: 1px;
}

#bottombox {
 width: 560px;
 margin-top: 30px;
 margin-left: -20px;
 padding: 10px;
 height: 60px;
 border-radius: 150px 150px 0 0;
 -webkit-border-radius: 150px;
 -moz-border-radius: 150px 150px 0 0;
 background: #777;
 box-shadow: inset 0 20px 20px rgba(255,255,255,0.5), inset 0 -20px 20px rgba(0,0,0,0.5), inset 0 1px 1px #fff, 0 -1px 2px #000, 0 -10px rgba(255,255,255,0.25), 0 -11px rgba(0,0,0,0.66), inset 0 40px #888, inset 0 1px 5px #fff;
 -o-box-shadow: inset 0 20px 20px rgba(255,255,255,0.5), inset 0 -20px 20px rgba(0,0,0,0.5), inset 0 1px 1px #fff, 0 -1px 2px #000, 0 -10px rgba(255,255,255,0.25), 0 -11px rgba(0,0,0,0.66), inset 0 40px #888, inset 0 1px 5px #fff;
 -webkit-box-shadow: inset 0 20px 20px rgba(255,255,255,0.5), inset 0 -20px 20px rgba(0,0,0,0.5), inset 0 1px 1px #fff, 0 -1px 2px #000, 0 -10px rgba(255,255,255,0.25), 0 -11px rgba(0,0,0,0.66), inset 0 40px #888, inset 0 1px 5px #fff;
 -moz-box-shadow: inset 0 20px 20px rgba(255,255,255,0.5), inset 0 -20px 20px rgba(0,0,0,0.5), inset 0 1px 1px #fff, 0 -1px 2px #000, 0 -10px rgba(255,255,255,0.25), 0 -11px rgba(0,0,0,0.66), inset 0 40px #888, inset 0 1px 5px #fff;
}

#bottombox button{
  margin: 0 10px;
  margin-top: 10px;
  background: #666;
  border: 0;
  color: #fff;
  text-shadow: 0 0 1px #000, 0 0 3px #000, 0 0 4px #000, 0 0 5px #000, 0 0 6px #000;
  height: 50px;
  font-size: 1.2em;
  padding: 10px;
  width: 140px;
  border-radius: 40px 15px 5px 5px;
  -webkit-border-radius: 40px;
  -moz-border-radius: 40px 15px 5px 5px;
  box-shadow: inset 0 0 3px #000, inset 0 0 7px #000, inset 0 -20px 50px #000, 0 1px 1px #ccc, 0 -1px 1px #666, inset 0 15px 10px #777;
  -o-box-shadow: inset 0 0 3px #000, inset 0 0 7px #000, inset 0 -20px 50px #000, 0 1px 1px #ccc, 0 -1px 1px #666, inset 0 15px 10px #777;
  -webkit-box-shadow: inset 0 0 3px #000, inset 0 0 7px #000, inset 0 -20px 50px #000, 0 1px 1px #ccc, 0 -1px 1px #666, inset 0 15px 10px #777;
  -moz-box-shadow: inset 0 0 3px #000, inset 0 0 7px #000, inset 0 -20px 50px #000, 0 1px 1px #ccc, 0 -1px 1px #666, inset 0 15px 10px #777;
}

#bottombox button + button {
  width: 180px;
  border-radius: 25px 25px 5px 5px;
  -webkit-border-radius: 25px;
  -moz-border-radius: 25px 25px 5px 5px;
}

#bottombox button + button + button {
  width: 140px;
  border-radius: 15px 40px 5px 5px;
  -webkit-border-radius: 15px;
  -moz-border-radius: 15px 40px 5px 5px;
}

</style>

<h1>Phone UI</h1>

<div id="phone">
  <div id="topbar">10:08 AM</div>
  <div id="topbox">
    <span>10</span><span>08</span>
    <p>Random weather information.</p>
  </div>
  <a><img><br><span>Messages</span></a>
  <a><img><br><span>Mail</span></a>
  <a><img><br><span>Browser</span></a>
  <a><img><br><span>Calendar</span></a>
  <div id="bottombox">
    <button>^</button>
    <button>Phone</button>
    <button>+</button>
  </div>
</div>
<p>(Go back to the <a href="http://dev.opera.com/articles/view/beautiful-ui-styling-with-css3-text-shadow-box-shadow-and-border-radius/">Beautiful UI styling with CSS3 text-shadow, box-shadow, and border-radius</a> article that this demo is a part of.)</p>
