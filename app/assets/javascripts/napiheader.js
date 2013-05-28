var canvas; 
var ctx; 
var red = 0;
var blue = 0;
var green = 0;
var animating = false;

window.onload = function(){
  canvas = document.getElementById("canvas");
  ctx = canvas.getContext("2d");
  
  animateLogo();


  //canvas.addEventListener("mouseover", animateLogo);
  //canvas.addEventListener("mouseout", resetLogo);
}

window.requestAnimFrame = (function(callback) {
  return window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.oRequestAnimationFrame || window.msRequestAnimationFrame ||
  function(callback) {
    window.setTimeout(callback, 1000 / 60);
  };
})();
  
function animate(canvas, context, startTime) {
  // update
  var time = (new Date()).getTime() - startTime;

  var elapsed = time ;
  
  var red = elapsed > 400?255:Math.floor(elapsed/400.0*255);
  var green = elapsed > 700?255:elapsed<300?0:Math.floor((elapsed-300)/400.0*255);
  var blue = elapsed > 1000?255:elapsed<600?0:Math.floor((elapsed-600)/400.0*255);
  
  if(!animating){
    red = 0;
    green = 0;
    blue = 0;
  }
  
  // clear
  context.clearRect(0, 0, canvas.width, canvas.height);
  drawLogo(red,green,blue);

  // request new frame
  if(animating)
  {
      requestAnimFrame(function() {
      animate(canvas, context, startTime);
    });
  }
}


function drawLogo(r,g,b)
{
  
  // #layer1
  ctx.save();
  ctx.transform(1.000000, 0.000000, 0.000000, 1.000000, -11.005370, -14.502093);

  // #text2993-4-8-1
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.font = "normal normal 144px Coolvetica Rg";
  ctx.fillText("N", 201.673710, 110.220890);

  // #path2997-9-4-1
  ctx.save();
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.beginPath();
  ctx.transform(0.518295, 0.000000, 0.000000, 0.509492, 44.008565, 37.810797);
  ctx.moveTo(682.741930, 142.122270);
  ctx.lineTo(574.285710, 142.122270);
  ctx.lineTo(465.829480, 142.122270);
  ctx.lineTo(520.057590, 48.196418);
  ctx.lineTo(574.285710, -45.729431);
  ctx.lineTo(628.513820, 48.196415);
  ctx.closePath();
  ctx.fill();
  ctx.restore();

  // #text2993-1-4-5-1
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.font = "normal normal 144px Coolvetica Rg";
  ctx.fillText("PI", 398.540620, 110.220890);

  // #path2997-9-4-1-2-2-21-6-7-8
  ctx.fillStyle = 'rgb('+(255-b)+','+(255-b)+','+ 255+')';
  ctx.beginPath();
  ctx.moveTo(145.362500, 14.502093);
  ctx.lineTo(117.237500, 62.377093);
  ctx.lineTo(89.143750, 110.220890);
  ctx.lineTo(122.300000, 110.220890);
  ctx.lineTo(140.956250, 78.439693);
  ctx.lineTo(159.612500, 46.658393);
  ctx.lineTo(178.300000, 78.439693);
  ctx.lineTo(196.956250, 110.220890);
  ctx.lineTo(201.581250, 110.220890);
  ctx.lineTo(173.456250, 62.377093);
  ctx.lineTo(145.362500, 14.502093);
  ctx.closePath();
  ctx.fill();

  // #path2997-9-4-1-2-2-2-8-6-9
  var grn = Math.floor(255-(g/2));
  ctx.fillStyle = 'rgb('+(255-g)+', '+grn+','+(255-g)+')';
  ctx.beginPath();
  ctx.moveTo(105.936160, 14.502093);
  ctx.lineTo(77.811160, 62.377093);
  ctx.lineTo(49.717410, 110.220890);
  ctx.lineTo(82.873660, 110.220890);
  ctx.lineTo(101.529910, 78.439693);
  ctx.lineTo(120.186160, 46.658393);
  ctx.lineTo(138.873660, 78.439693);
  ctx.lineTo(157.529910, 110.220890);
  ctx.lineTo(162.154910, 110.220890);
  ctx.lineTo(134.029910, 62.377093);
  ctx.lineTo(105.936160, 14.502093);
  ctx.closePath();
  ctx.fill();

  // #path2997-9-4-1-2-2-5-1-2
  ctx.fillStyle = 'rgb('+255+','+(255-r)+','+(255-r)+')';
  ctx.beginPath();
  ctx.moveTo(67.224120, 14.502093);
  ctx.lineTo(39.099120, 62.377093);
  ctx.lineTo(11.005370, 110.220890);
  ctx.lineTo(44.161620, 110.220890);
  ctx.lineTo(62.817870, 78.439693);
  ctx.lineTo(81.474120, 46.658393);
  ctx.lineTo(100.161620, 78.439693);
  ctx.lineTo(118.817870, 110.220890);
  ctx.lineTo(123.442870, 110.220890);
  ctx.lineTo(95.317870, 62.377093);
  ctx.lineTo(67.224120, 14.502093);
  ctx.closePath();
  ctx.fill();
  ctx.restore();
};

function animateLogo(event){
  ctx.clearRect(0, 0, canvas.width, canvas.height);
  //drawLogo(255,255,255);
    animating = true;
    var startTime = (new Date()).getTime();
    animate(canvas, ctx, startTime);
 };
 function resetLogo(event){
  animating = false;
  ctx.clearRect(0, 0, canvas.width, canvas.height);
  drawLogo(0,0,0);
};
 
