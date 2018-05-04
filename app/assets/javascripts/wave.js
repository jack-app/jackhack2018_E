
//宣言
var unit = 100,
    canvas, context, canvas2, context2,
    height, width, xAxis, yAxis,
    draw;
var bin;

function init() {
    bin = document.getElementById("flowedBin");
    canvas = document.getElementById("sineCanvas");
    //Canvasのwidthをウィンドウの幅に合わせる
    canvas.width = document.documentElement.clientWidth;
    canvas.height = document.documentElement.clientHeight*0.7;
    context = canvas.getContext("2d");
    //波のサイズ
    height = canvas.height;
    width = canvas.width;
    //瓶のサイズ
    // bin.width = document.documentElement.clientWidth*0.08;

    xAxis = Math.floor(height/2);
    yAxis = 0;
    draw.seconds = 0;
    draw.t = 0;
    draw();

}

function draw() {

    // キャンバスの描画をクリア
    context.clearRect(0, 0, width, height);

    //波を描画
    drawWave('#10c2cd', 1, 3, 0);


    // Update the time and draw again
    draw.seconds = draw.seconds + .009;
    draw.t = draw.seconds*Math.PI;
    setTimeout(draw, 35);
};


function drawWave(color, alpha, zoom, delay) {
    context.fillStyle = color;
    context.globalAlpha = alpha;

    context.beginPath(); //パスの開始
    drawSine(draw.t / 0.5, zoom, delay);
    context.lineTo(width + 10, height); //パスをCanvasの右下へ
    context.lineTo(0, height); //パスをCanvasの左下へ
    context.closePath() //パスを閉じる
    context.fill(); //塗りつぶす
}

function drawSine(t, zoom, delay) {
    // Set the initial x and y, starting at 0,0 and translating to the origin on
    // the canvas.
    var x = t; //時間を横の位置とする
    var y = Math.sin(x)/zoom;
    bin.style.left = x*16 + "px";
    bin.style.top = (y*50 + height*0.8)+ "px";
    // window.alert(bin);

    context.moveTo(yAxis, unit*y+xAxis); //スタート位置にパスを置く

    // Loop to draw segments (横幅の分、波を描画)
    for (i = yAxis; i <= width + 10; i += 10) {
        x = t+(-yAxis+i)/unit/zoom;
        y = Math.sin(x - delay)/3;
        context.lineTo(i, unit*y+xAxis);
    }
}
init();
