function countTextDot() {
let count = 0;
    return function() {
    if (count === 4) {
    count = 0;
    }
    count++;
    return count;
    }
}
let textDot = countTextDot();

function textDotAnim() {
    let count = textDot();
console.log("count= " + count);
    if(count !== 4) {
        if (count === 1) {
        loadingText.text = "Loading";
        } else {
            loadingText.text = loadingText.text += ".";
        }
    } else {
        loadingText.text = "Loading...";

    }

}
