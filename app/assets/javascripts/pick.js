var bin;


function init(){
  bin =     bin = document.getElementById("pyonBin");
  pyonPyon(100, false);
}

function pyonPyon(height, isUp){
  if isUp == true{
    bin.style.bottom = 0;
    height = height*0.3;
  }else {
    bin.style.bottom = height;
    isUp = true;
  }
  setTimeout(pyonPyon, 35);
}
 init();
