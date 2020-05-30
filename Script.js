
function update() {
    let bol = false;
    let i = 0;
    return function () {
        if(i < 5) {
        i++;
        return true;
        } else if(i === 4) {
            i++;
        }
        if(bol === true) {
            bol = false
        } else {
            bol = true
        }
        //console.log(bol);
        return bol;
    }
}

function ret() {
    let iTrue = 0;
    let iFalse = 0;
    let i = 0;
    return function() {
        if(i >= 0) {
            i++;
            if (i <= 4) {
                return true;
            } else if (i > 4 && i <= 8) {
                if (i === 8) {
                    i = 0;
                }
                return false;
            }

        }
    }
}

function counte() {
    let count = 9;
    return function () {
        if (count === 1) {
            count = 9;
        }
        if(count !== 1) {
            count -= 2;
            //console.log("count = " + count);
            return count;

        }
    }
}
function counterReverse() {
    let count = -1;
    return function () {
        if (count === 7) {
            count = -1;
        }
        if(count !== 7) {
        count += 2;
            //console.log("countReverse = " + count);
        }
        return count;
    }
}

let updater = ret();
let counter = counte();
let counterRevers = counterReverse();




function runAnimation() {
    let objects = [rect1Animation, xanim, rect4Animation, xanim4, rect7Animation, xanim7, rect10Animation, xanim10];
    let objectsReverse = [rect1Reverse, xAnimReverse, rect4Reverse, xAnim4Reverse, rect7Reverse, xAnim7Reverse, rect10Reverse, xAnim10Reverse]
    if(updater() === true) {
        let count = counter();
        console.log("count= " + count);
        if(count) {
            //startAnimTimer.restart();
            objects[count].onStopped(delay.restart())

            objects[count].restart();
            objects[count-1].restart();



        }
    } else {
        let countRevers = counterRevers();
        console.log("countRevers= " + countRevers);
        if(countRevers) {
           //startAnimTimer.restart();
            objectsReverse[countRevers].onStopped(delay.restart())

            objectsReverse[countRevers].restart();
            objectsReverse[countRevers-1].restart();

        }
    }
}
