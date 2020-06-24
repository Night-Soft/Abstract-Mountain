let randColor;
let prevColorBackground = 0;
let prevColorRectangles;

function width() {
return Math.ceil(container.width / 7)
}

function setRectanglesWidth() {
    let rectangles = [rectangle, rectangle1, rectangle2, rectangle3, rectangle4, rectangle5, rectangle6];
    console.log("container.width " + container.width);
    for (var i = 0; i < rectangles.length; i++) {
        rectangles[i].width = width();
        if(i !== 0) {
        rectangles[i].x = rectangles[i-1].x + width();
        }

    }
}
function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min)) + min;
}

function setBackgroundGradient() {
    let gradients = [grownEarly, nightCall, sharpsBlue, sunnyMorning, loveKiss];
    randColor = getRandomInt(0,5);
    if(randColor === prevColorBackground || randColor === prevColorRectangles) {
        setBackgroundGradient();

    }
    prevColorRectangles = randColor;
    prevColorBackground = randColor;
    container.gradient = gradients[randColor].createObject(container);

}

function setRectanglesGradient() {
    randColor = getRandomInt(0,5);
    if(randColor === prevColorBackground || randColor === prevColorRectangles) {
        setRectanglesGradient();

    }
    prevColorRectangles = randColor;
    prevColorBackground = randColor;;
    let gradients = [grownEarly, nightCall, sharpsBlue, sunnyMorning, loveKiss];
    let rectangles = [rectangle, rectangle1, rectangle2, rectangle3, rectangle4, rectangle5, rectangle6];
    for (var i = 0; i < rectangles.length; i++ ) {
        rectangles[i].gradient = gradients[randColor].createObject(rectangles[i]);
    }

}

function heightAnimation() {
    setRectanglesWidth();
    let rectangles = [rectangle, rectangle1, rectangle2, rectangle3, rectangle4, rectangle5, rectangle6];
    let propertyAnimations = [heightAnim, heightAnim1, heightAnim2, heightAnim3, heightAnim4, heightAnim5, heightAnim6];
    let random = [];
    for (var i = 0; i < rectangles.length; i++ ) {
        random.push(getRandomInt(700, 1500));
        propertyAnimations[i].duration = random[i];
        propertyAnimations[i].restart();
    }
    let max = random[0];
    let min = 0;
    for (var k = 0; k < random.length; k++ ) {
        console.log("duration " + random[k]);
        min = random[k];
        if (min > max){
            max = min;
        }
    }
    timerHeightAnimEnd.interval = max + 200;
    timerHeightAnimEnd.restart();
    console.log("max " + max);
}
