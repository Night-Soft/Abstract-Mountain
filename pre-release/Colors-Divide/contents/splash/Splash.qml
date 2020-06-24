// Created By Night-App
// Write to me: NightSoftware@outlook.com

// Free to use

import QtQuick 2.5
import QtQuick.Window 2.10

import "ColorsDivide.js" as Script

Rectangle {
    id: container
    width: Screen.width
    height: Screen.height
    color: "#c471f5"
    gradient: Gradient {
        GradientStop {
            position: 0
            color: "#434343"
        }

        GradientStop {
            position: 1
            color: "#000000"
        }
    }


    Rectangle {
        id: rectangle6
        x: 1200
        y: 0
        width: 200
        height: parent.height
        color: "#37ecba"
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#37ecba"
            }

            GradientStop {
                position: 1
                color: "#72afd3"
            }
        }
    }

    Rectangle {
        id: rectangle5
        x: 1000
        y: 0
        width: 200
        height: parent.height
        color: "#37ecba"
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#37ecba"
            }

            GradientStop {
                position: 1
                color: "#72afd3"
            }
        }
    }

    Rectangle {
        id: rectangle4
        x: 800
        y: 0
        width: 200
        height: parent.height
        color: "#37ecba"
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#37ecba"
            }

            GradientStop {
                position: 1
                color: "#72afd3"
            }
        }
    }

    Rectangle {
        id: rectangle3
        x: 600
        y: 0
        width: 200
        height: parent.height
        color: "#37ecba"
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#37ecba"
            }

            GradientStop {
                position: 1
                color: "#72afd3"
            }
        }
    }

    Rectangle {
        id: rectangle2
        x: 400
        y: 0
        width: 200
        height: parent.height
        color: "#37ecba"
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#37ecba"
            }

            GradientStop {
                position: 1
                color: "#72afd3"
            }
        }
    }

    Rectangle {
        id: rectangle1
        x: 200
        y: 0
        width: 200
        height: parent.height
        color: "#37ecba"
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#37ecba"
            }

            GradientStop {
                position: 1
                color: "#72afd3"
            }
        }
    }

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 200
        height: parent.height
        color: "#f6d365"
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#f4c534"
            }

            GradientStop {
                position: 1
                color: "#fd7a54"
            }
        }

    }

    Rectangle {
        id: madeBy
        x: 0
        y: 712
        width: 93
        height: 56
        color: "#00000000"
        anchors.bottom: parent.bottom
        Text {
            id: textMadeBy
            y: 8
            width: 78
            height: 31
            color: "#ffffff"
            text: qsTr("Made by \n Night-App")
            anchors.verticalCenter: parent.verticalCenter
            style: Text.Normal
            anchors.horizontalCenter: parent.horizontalCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "Tahoma"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
        }
        anchors.left: parent.left
    }


    PropertyAnimation {
        id: heightAnim;
        property: "height"
        target: rectangle
        from: 0;
        to: container.height;
    }

    PropertyAnimation {
        id: heightAnim1;
        property: "height"
        target: rectangle1
        from: 0;
        to: container.height;
    }

    PropertyAnimation {
        id: heightAnim2;
        property: "height"
        target: rectangle2
        from: 0;
        to: container.height;
    }

    PropertyAnimation {
        id: heightAnim3;
        property: "height"
        target: rectangle3
        from: 0;
        to: container.height;
    }

    PropertyAnimation {
        id: heightAnim4;
        property: "height"
        target: rectangle4
        from: 0;
        to: container.height;
    }

    PropertyAnimation {
        id: heightAnim5;
        property: "height"
        target: rectangle5
        from: 0;
        to: container.height;
    }

    PropertyAnimation {
        id: heightAnim6;
        property: "height"
        target: rectangle6
        from: 0;
        to: container.height;
    }

    //after width anim change rectangles color
    //after height anim change background to random color

    PropertyAnimation {
        id: widthAnim;
        property: "width"
        targets: {[rectangle, rectangle1, rectangle2,rectangle3,rectangle4,rectangle5,rectangle6]}
        from: Script.width();
        to: 0;
        duration: 1250;
        easing.type: Easing.InQuad;
        onStopped: {
            Script.setRectanglesGradient();
            widthAnimOnStopped.restart();
        }

    }
    Timer {
        id: widthAnimOnStopped;
        interval: 200
        onTriggered: {
            Script.heightAnimation();
        }
    }

    Timer {
        id: timerHeightAnimEnd;
        onTriggered: {
            // Script.setBackgroundGradient();
            widthAnim.restart();

        }
    }
    Component {
        id: grownEarly
        Gradient {
            GradientStop {
                position: 1
                color: "#0ba360"
            }

            GradientStop {
                position: 0
                color: "#3cba92"
            }
        }
    }
    Component {
        id: nightCall
        Gradient {
            GradientStop {
                position: 0
                color: "#ac32e4"
            }

            GradientStop {
                position: 0.48
                color: "#7918f2"
            }

            GradientStop {
                position: 1
                color: "#4801ff"
            }
        }
    }
    Component {
        id: sharpsBlue
        Gradient {
            GradientStop {
                position: 0
                color: "#00c6fb"
            }

            GradientStop {
                position: 1
                color: "#005bea"
            }
        }
    }
    Component {
        id: sunnyMorning
        Gradient {
            GradientStop {
                position: 0
                color: "#f4c534"
            }

            GradientStop {
                position: 1
                color: "#fd7a54"
            }
        }
    }
    Component {
        id: loveKiss
        Gradient {
            GradientStop {
                position: 1
                color: "#ff0844"
            }

            GradientStop {
                position: 0
                color: "#ff3d6c"
            }
        }
    }
    Component.onCompleted: {
        Script.setRectanglesWidth();
        Script.setRectanglesGradient();
        //Script.setBackgroundGradient()
        Script.heightAnimation();

    }

}
