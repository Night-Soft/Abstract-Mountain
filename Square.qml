// Created By Night-App
// Write to me NightSoftware@outlook.com

// Free to use
import QtQuick 2.5
import QtQuick.Window 2.10
import "Script.js" as Script

Window {
    id: window
    width: 1366
    height: 768
    visible: true
    title: "splash"
    Image {
        id: root
        source: "./img/background4Green.svg"
        fillMode: Image.Stretch
        property int stage
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        sourceSize: Qt.size(parent.width, parent.height)
        onStageChanged: {
            if (stage == 1) {
                //                introAnimation.running = true
                //                introAnimation2.running = true
            }
        }
        Rectangle {
            id: loading2
            x: 556
            y: 270
            width: 200
            height: 200
            color: "#00000000"

            Rectangle {
                id: rect1
                width: 35
                height: 35
                color: "#ffffff"
                radius: 0
                anchors.verticalCenter: parent.verticalCenter
                antialiasing: true
                Timer {
                    id: startAnimTimer
                    //running: true
                    //repeat: true
                    interval: 700
                    onTriggered:  {

                        //delay.restart();

                    }
                }
                Timer {
                    id: delay
                    interval: 400;
                    running: true;
                    onTriggered: {
                        Script.runAnimation();

//                        startAnimTimer.restart();
                        console.log("delay start = ")
                    }

                }
                Timer {
                    id: delayReverse
                    interval: 1000; running: true; repeat: true
                    onTriggered: {

                    }

                }
                NumberAnimation {
                    targets: [rect1, rect2, rect3];
                    properties: "rotation"
                    id: rect1Animation
                    //loops: Animation.Infinite
                    from: 0;
                    to: 90;
                    duration: 1000
                    easing.type: Easing.InOutCubic;
                    onStopped: {

                    }
                }
                NumberAnimation {
                    id: xanim
                    targets: [rect1, rect2, rect3];
                    properties: "x"
                    easing.type: Easing.InOutCubic;
                    duration: 1000
                    from: rect1.x; to: rect1.x+35
                }
                NumberAnimation {
                    targets: [rect1, rect2, rect3];
                    properties: "rotation"
                    id: rect1Reverse
                    //loops: Animation.Infinite
                    from: 90;
                    to: 0;
                    duration: 1000
                    easing.type: Easing.InOutCubic;
                }
                NumberAnimation {
                    id: xAnimReverse
                    targets: [rect1, rect2, rect3];
                    properties: "x"
                    easing.type: Easing.InOutCubic;
                    duration: 1000
                    from: rect1.x; to: 0
                }
            }

            Rectangle {
                id: rect2
                x: 0
                y: -5
                width: 35
                height: 35
                color: "#ffffff"
                radius: 0
                antialiasing: true

                anchors.verticalCenterOffset: 45
                anchors.verticalCenter: parent.verticalCenter
            }

            Rectangle {
                id: rect3
                x: 0
                y: -7
                width: 35
                height: 35
                color: "#ffffff"
                radius: 0
                antialiasing: true

                anchors.verticalCenterOffset: 90
                anchors.verticalCenter: parent.verticalCenter
            }

            Rectangle {
                id: rect4
                x: 45
                y: -4
                width: 35
                height: 35
                color: "#ffffff"
                radius: 0
                anchors.verticalCenterOffset: 0
                antialiasing: true
                anchors.verticalCenter: parent.verticalCenter
                NumberAnimation {
                    targets: [rect4, rect5, rect6];
                    properties: "rotation"
                    id: rect4Animation
                    //loops: Animation.Infinite
                    from: 0;
                    to: 90;
                    duration: 1000
                    easing.type: Easing.InOutCubic;
                }
                NumberAnimation {
                    id: xanim4
                    targets: [rect4, rect5, rect6];
                    properties: "x"
                    easing.type: Easing.InOutCubic;
                    duration: 1000
                    from: rect4.x; to: rect4.x+35
                }
                NumberAnimation {
                    targets: [rect4, rect5, rect6];
                    properties: "rotation"
                    id: rect4Reverse
                    from: 90;
                    to: 0;
                    duration: 1000
                    easing.type: Easing.InOutCubic;
                }
                NumberAnimation {
                    id: xAnim4Reverse
                    targets: [rect4, rect5, rect6];
                    properties: "x"
                    easing.type: Easing.InOutCubic;
                    duration: 1000
                    from: rect4.x; to: 45
                }
            }


            Rectangle {
                id: rect5
                x: 45
                y: -9
                width: 35
                height: 35
                color: "#ffffff"
                radius: 0
                anchors.verticalCenterOffset: 45
                antialiasing: true
                anchors.verticalCenter: parent.verticalCenter
            }

            Rectangle {
                id: rect6
                x: 45
                y: -11
                width: 35
                height: 35
                color: "#ffffff"
                radius: 0
                anchors.verticalCenterOffset: 90
                antialiasing: true
                anchors.verticalCenter: parent.verticalCenter
            }

            Rectangle {
                id: rect7
                x: 90
                y: 4
                width: 35
                height: 35
                color: "#ffffff"
                radius: 0
                visible: true
                anchors.verticalCenterOffset: 0
                antialiasing: true
                anchors.verticalCenter: parent.verticalCenter
                NumberAnimation {
                    targets: [rect7, rect8, rect9];
                    properties: "rotation"
                    id: rect7Animation
                    //loops: Animation.Infinite
                    from: 0;
                    to: 90;
                    duration: 1000
                    easing.type: Easing.InOutCubic;
                }
                NumberAnimation {
                    id: xanim7
                    targets: [rect7, rect8, rect9];
                    properties: "x"
                    easing.type: Easing.InOutCubic;
                    duration: 1000
                    from: rect7.x; to: rect7.x+35
                }
                NumberAnimation {
                    targets: [rect7, rect8, rect9];
                    properties: "rotation"
                    id: rect7Reverse
                    //loops: Animation.Infinite
                    from: 90;
                    to: 0;
                    duration: 1000
                    easing.type: Easing.InOutCubic;
                }
                NumberAnimation {
                    id: xAnim7Reverse
                    targets: [rect7, rect8, rect9];
                    properties: "x"
                    easing.type: Easing.InOutCubic;
                    duration: 1000
                    from: rect7.x; to: 90
                }
            }

            Rectangle {
                id: rect8
                x: 90
                width: 35
                height: 35
                color: "#ffffff"
                radius: 0
                visible: true
                anchors.verticalCenterOffset: 45
                antialiasing: true
                anchors.verticalCenter: parent.verticalCenter
            }

            Rectangle {
                id: rect9
                x: 90
                y: -3
                width: 35
                height: 35
                color: "#ffffff"
                radius: 0
                visible: true
                anchors.verticalCenterOffset: 90
                antialiasing: true
                anchors.verticalCenter: parent.verticalCenter
            }

            Rectangle {
                id: rect10
                x: 135
                width: 35
                height: 35
                color: "#ffffff"
                radius: 0
                visible: true
                anchors.verticalCenterOffset: 0
                antialiasing: true
                anchors.verticalCenter: parent.verticalCenter
                NumberAnimation {
                    targets: [rect10, rect11, rect12];
                    properties: "rotation"
                    id: rect10Animation
                    //loops: Animation.Infinite
                    from: 0;
                    to: 90;
                    duration: 1000
                    easing.type: Easing.InOutCubic;
                }
                NumberAnimation {
                    id: xanim10
                    targets: [rect10, rect11, rect12];
                    properties: "x"
                    easing.type: Easing.InOutCubic;
                    duration: 1000
                    from: rect10.x; to: rect10.x+35
                }
                NumberAnimation {
                    targets: [rect10, rect11, rect12];
                    properties: "rotation"
                    id: rect10Reverse
                    //loops: Animation.Infinite
                    from: 90;
                    to: 0;
                    duration: 1000
                    easing.type: Easing.InOutCubic;
                }
                NumberAnimation {
                    id: xAnim10Reverse
                    targets: [rect10, rect11, rect12];
                    properties: "x"
                    easing.type: Easing.InOutCubic;
                    duration: 1000
                    from: rect10.x; to: 135
                }
            }

            Rectangle {
                id: rect11
                x: 135
                width: 35
                height: 35
                color: "#ffffff"
                radius: 0
                visible: true
                anchors.verticalCenterOffset: 45
                antialiasing: true
                anchors.verticalCenter: parent.verticalCenter
            }

            Rectangle {
                id: rect12
                x: 135
                y: -15
                width: 35
                height: 35
                color: "#ffffff"
                radius: 0
                visible: true
                anchors.verticalCenterOffset: 90
                antialiasing: true
                anchors.verticalCenter: parent.verticalCenter
            }
        }

        Rectangle {
            id: loading
            x: 402
            y: 85
            width: 351
            height: 300
            color: "#00ffffff"
            visible: false
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            Rectangle {
                id: plasma
                x: 62
                y: 46
                width: 228
                height: 208
                color: "#00000000"
                Rectangle {
                    id: rectangle1
                    x: 14
                    y: 4
                    width: 200
                    height: 200
                    color: "#00000000"
                    PropertyAnimation {
                        id: animation;
                        target: rectangle1;
                        property: "x";
                        from: -305
                        to: 14;
                        duration: 3000
                        running: true;
                        loops: Animation.Infinite
                        onStarted: animation2.running = true

                    }
                    PropertyAnimation {
                        id: animation1;
                        target: rectangle1;
                        property: "y";
                        from: 66
                        to: 4;
                        duration: 3000
                        running: true;
                        loops: Animation.Infinite
                    }
                    PropertyAnimation {
                        id: animation2;
                        target: rectangle1;
                        property: "opacity";
                        from: 0
                        to: 1;
                        duration: 1500
                        running: true;
                        //loops: Animation.Infinite
                    }
                    //                    transitions: Transition {
                    //                           //animate both theRect's and uselessItem's x and y to their final values
                    //                           NumberAnimation { properties: "x,y" }

                    //                           //animate theRect's z to its final value
                    //                           NumberAnimation { target: theRect; property: "z" }
                    //                       }
                    Image {
                        id: plasma1
                        x: 14
                        y: 4
                        width: 200
                        height: 200
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        source: "img/plasma1.svg"
                        smooth: true
                        sourceSize: Qt.size(parent.width, parent.height)
                        fillMode: Image.PreserveAspectCrop


                    }
                }

                Image {
                    id: plasma2
                    width: 200
                    height: 200
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    smooth: true
                    source: "img/plasma2.svg"
                    sourceSize: Qt.size(parent.width, parent.height)
                    fillMode: Image.PreserveAspectCrop
                }

                Image {
                    id: plasma3
                    width: 200
                    height: 200
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    smooth: true
                    source: "img/plasma3.svg"
                    sourceSize: Qt.size(parent.width, parent.height)
                    fillMode: Image.PreserveAspectCrop
                }

                Rectangle {
                    id: pl4
                    width: 200
                    height: 200
                    color: "#00000000"
                    RotationAnimator {
                        id: introAnimation
                        target: pl4;
                        loops: Animation.Infinite
                        from: 360;
                        to: 0;
                        duration: 3000
                        running: true
                    }
                    Image {
                        id: plasma4
                        x: 14
                        y: 4
                        width: 200
                        height: 200
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        smooth: true
                        source: "img/plasma4.svg"
                        sourceSize: Qt.size(parent.width, parent.height)
                        fillMode: Image.PreserveAspectCrop
                    }
                }





            }


            Image {
                id: rhomp
                x: -507
                y: -234
                width: 1366
                height: 768
                source: "img/rhomp.svg"
                sourceSize: Qt.size(parent.width, parent.height)
                fillMode: Image.PreserveAspectCrop
            }

            //            RotationAnimator {
            //                id: introAnimation
            //                target: imageBlue;
            //                loops: Animation.Infinite
            //                from: 0;
            //                to: 360;
            //                duration: 8000
            //                running: true
            //            }


            //            RotationAnimator {
            //                id: introAnimation2
            //                target: imagePink;
            //                loops: Animation.Infinite
            //                from: 360;
            //                to: 0;
            //                duration: 5000
            //                running: true
            //            }


            Text {
                id: element
                x: 90
                y: 186
                color: "#ffffff"
                text: qsTr("Loading...")
                anchors.verticalCenterOffset: 190
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.family: "Tahoma"
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 36
            }





        }

        Rectangle {
            id: hoursMinutesSeconds
            width: 519
            height: 88
            color: "#00000000"
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 0

            Rectangle {
                id: hoursContainer
                width: 155
                height: 150
                color: "#00000000"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 0

                Text {
                    id: hours
                    x: 25
                    width: 114
                    height: 90
                    color: "#ffffff"
                    text: Qt.formatDateTime(new Date(),"hh")
                    font.capitalization: Font.Capitalize
                    font.family: "Tahoma"
                    verticalAlignment: Text.AlignVCenter
                    font.italic: false
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.bold: false
                    anchors.verticalCenter: parent.verticalCenter
                    opacity: 1
                    font.strikeout: false
                    font.underline: false
                    transformOrigin: Item.Center
                    font.pointSize: 75
                    horizontalAlignment: Text.AlignHCenter
                    font.weight: Font.Thin
                }

                Text {
                    id: hoursSign
                    x: 442
                    width: 90
                    height: 39
                    color: "#ffffff"
                    text: qsTr("hours")
                    anchors.top: hours.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    elide: Text.ElideNone
                    font.underline: false
                    font.italic: true
                    font.family: "Tahoma"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    transformOrigin: Item.Center
                    font.pixelSize: 25
                }

            }

            Text {
                id: dots
                height: 150
                color: "#ffffff"
                text: ":"
                anchors.right: minutesContainer.left
                anchors.left: hoursContainer.right
                font.capitalization: Font.Capitalize
                font.family: "Tahoma"
                verticalAlignment: Text.AlignTop
                font.italic: false
                font.bold: false
                anchors.verticalCenter: parent.verticalCenter
                opacity: 1
                font.strikeout: false
                font.underline: false
                transformOrigin: Item.Center
                font.pointSize: 75
                horizontalAlignment: Text.AlignHCenter
                font.weight: Font.Thin
            }

            Rectangle {
                id: minutesContainer
                width: 155
                height: 150
                color: "#00000000"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

                Text {
                    id: minutes
                    x: 432
                    y: 309
                    width: 114
                    height: 90
                    color: "#ffffff"
                    text: Qt.formatDateTime(new Date(),"mm")
                    font.capitalization: Font.Capitalize
                    font.family: "Tahoma"
                    verticalAlignment: Text.AlignVCenter
                    font.italic: false
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.bold: false
                    anchors.verticalCenter: parent.verticalCenter
                    opacity: 1
                    font.strikeout: false
                    font.underline: false
                    transformOrigin: Item.Center
                    font.pointSize: 75
                    horizontalAlignment: Text.AlignHCenter
                    font.weight: Font.Thin
                }

                Text {
                    id: minutesSign
                    x: 629
                    width: 110
                    height: 39
                    color: "#ffffff"
                    text: qsTr("minutes")
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: minutes.bottom
                    lineHeight: 1
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideNone
                    font.pixelSize: 25
                    transformOrigin: Item.Center
                    font.family: "Tahoma"
                    font.underline: false
                    horizontalAlignment: Text.AlignHCenter
                    font.italic: true
                }

            }

            Text {
                id: dots1
                y: 7
                height: 150
                color: "#ffffff"
                text: ":"
                anchors.left: minutesContainer.right
                anchors.right: secondsContainer.left
                font.capitalization: Font.Capitalize
                font.family: "Tahoma"
                verticalAlignment: Text.AlignTop
                font.italic: false
                font.bold: false
                anchors.verticalCenter: parent.verticalCenter
                opacity: 1
                font.strikeout: false
                font.underline: false
                transformOrigin: Item.Center
                font.pointSize: 75
                horizontalAlignment: Text.AlignHCenter
                font.weight: Font.Thin
            }

            Rectangle {
                id: secondsContainer
                width: 155
                height: 150
                color: "#00000000"
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                Text {
                    id: seconds
                    x: 432
                    y: 309
                    height: 90
                    color: "#ffffff"
                    text: Qt.formatDateTime(new Date(),"ss")
                    fontSizeMode: Text.FixedSize
                    font.capitalization: Font.Capitalize
                    font.family: "Tahoma"

                    Timer {
                        interval: 1000; running: true; repeat: true
                        onTriggered: seconds.text = Qt.formatDateTime(new Date(),"ss");
                    }


                    verticalAlignment: Text.AlignVCenter
                    font.italic: false
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.bold: false
                    anchors.verticalCenter: parent.verticalCenter
                    opacity: 1
                    font.strikeout: false
                    font.underline: false
                    transformOrigin: Item.Center
                    font.pointSize: 75
                    horizontalAlignment: Text.AlignHCenter
                    font.weight: Font.Thin
                }

                Text {
                    id: secondsSign
                    width: 108
                    height: 39
                    color: "#ffffff"
                    text: qsTr("seconds")
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: seconds.bottom
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideNone
                    font.pixelSize: 25
                    transformOrigin: Item.Center
                    lineHeight: 1
                    font.family: "Tahoma"
                    font.underline: false
                    horizontalAlignment: Text.AlignHCenter
                    font.italic: true
                }
            }






        }

        Rectangle {
            id: yearMonthNumber
            x: 415
            y: 608
            width: 550
            height: 160
            color: "#00000000"
            anchors.horizontalCenterOffset: 35
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter

            Rectangle {
                id: yearsContainer
                x: 0
                y: 0
                width: 180
                height: 85
                color: "#252324"
                radius: 10
                anchors.rightMargin: 30
                anchors.right: monthContainer.left
                border.width: 0
                anchors.verticalCenter: parent.verticalCenter

                Text {
                    id: years
                    x: 37
                    y: 3
                    width: 170
                    height: 85
                    color: "#26c534"
                    text: Qt.formatDateTime(new Date(),"yyyy")
                    font.pixelSize: 75
                    font.capitalization: Font.Capitalize
                    verticalAlignment: Text.AlignVCenter
                    font.bold: false
                    opacity: 1
                    anchors.verticalCenter: parent.verticalCenter
                    transformOrigin: Item.Center
                    font.weight: Font.Thin
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.strikeout: false
                    font.family: "Tahoma"
                    font.underline: false
                    horizontalAlignment: Text.AlignHCenter
                    font.italic: false}

                Text {
                    id: yearsSign
                    x: 68
                    width: 180
                    height: 39
                    color: "#ffffff"
                    text: qsTr("years")
                    anchors.top: years.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Tahoma"
                    font.italic: true
                    font.pixelSize: 25
                    transformOrigin: Item.Center
                    elide: Text.ElideNone
                    font.underline: false
                    verticalAlignment: Text.AlignVCenter
                }





            }

            Rectangle {
                id: monthContainer
                x: 397
                y: 46
                width: 100
                height: 85
                color: "#252324"
                radius: 10
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                border.width: 0

                Text {
                    id: month
                    x: 37
                    y: 3
                    width: 85
                    height: 85
                    color: "#26c534"
                    text: Qt.formatDateTime(new Date(),"MM")
                    font.capitalization: Font.Capitalize
                    font.family: "Tahoma"
                    font.pixelSize: 75
                    verticalAlignment: Text.AlignVCenter
                    font.italic: false
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.bold: false
                    anchors.verticalCenter: parent.verticalCenter
                    opacity: 1
                    font.strikeout: false
                    font.underline: false
                    transformOrigin: Item.Center
                    horizontalAlignment: Text.AlignHCenter
                    font.weight: Font.Thin
                }

                Text {
                    id: monthSign
                    x: 71
                    width: 85
                    height: 39
                    color: "#ffffff"
                    text: qsTr("months")
                    anchors.top: month.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideNone
                    font.pixelSize: 25
                    transformOrigin: Item.Center
                    lineHeight: 1
                    font.family: "Tahoma"
                    font.underline: false
                    horizontalAlignment: Text.AlignHCenter
                    font.italic: true
                }

            }

            Rectangle {
                id: numberContainer
                y: 46
                width: 85
                height: 85
                color: "#252324"
                radius: 10
                anchors.leftMargin: 30
                anchors.left: monthContainer.right
                anchors.verticalCenter: parent.verticalCenter
                border.width: 0

                Text {
                    id: number
                    x: 0
                    width: 100
                    height: 85
                    color: "#26c534"
                    text: Qt.formatDateTime(new Date(),"dd")
                    font.pixelSize: 75
                    font.capitalization: Font.Capitalize
                    verticalAlignment: Text.AlignVCenter
                    font.bold: false
                    opacity: 1
                    anchors.verticalCenter: parent.verticalCenter
                    transformOrigin: Item.Center
                    font.weight: Font.Thin
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.strikeout: false
                    font.family: "Tahoma"
                    font.underline: false
                    horizontalAlignment: Text.AlignHCenter
                    font.italic: false
                }

                Text {
                    id: numberSign
                    x: 134
                    width: 70
                    height: 39
                    color: "#ffffff"
                    text: qsTr("days")
                    anchors.top: number.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideNone
                    font.pixelSize: 25
                    transformOrigin: Item.Center
                    lineHeight: 1
                    font.family: "Tahoma"
                    font.underline: false
                    horizontalAlignment: Text.AlignHCenter
                    font.italic: true
                }

            }




        }

        Rectangle {
            id: plasma5
            x: 1264
            width: 102
            height: 88
            color: "#00000000"
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.right: parent.right

            Image {
                id: image
                x: 262
                width: 70
                height: 70
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
                source: "img/plasma.svg"
                fillMode: Image.PreserveAspectCrop
                sourceSize: Qt.size(width, height);
            }

            Text {
                id: element1
                y: 165
                width: 88
                height: 35
                color: "#ffffff"
                text: qsTr("Plasma 5")
                font.pixelSize: 20
                font.family: "Tahoma"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Rectangle {
            id: madeBy
            y: 697
            width: 117
            height: 71
            color: "#00000000"
            anchors.left: parent.left
            Text {
                id: element2
                y: 21
                width: 106
                height: 83
                color: "#ffffff"
                text: qsTr("Made by \n Night-App")
                anchors.horizontalCenter: parent.horizontalCenter
                font.family: "Tahoma"
                anchors.bottom: parent.bottom
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
            }
            anchors.bottom: parent.bottom
        }






    }

}




/*##^##
Designer {
    D{i:8;invisible:true}D{i:9;invisible:true}D{i:17;anchors_height:491;anchors_width:1366;anchors_x:0;anchors_y:0}
D{i:18;invisible:true}D{i:19;invisible:true}D{i:21;anchors_height:491;anchors_width:1366;anchors_x:0;anchors_y:0;invisible:true}
D{i:22;invisible:true}D{i:23;invisible:true}D{i:24;invisible:true}D{i:20;invisible:true}
D{i:26;anchors_height:39;anchors_y:77}D{i:28;anchors_width:501;anchors_x:25}D{i:29;anchors_height:491;anchors_width:1366;anchors_x:0;anchors_y:0}
D{i:30;anchors_height:39;anchors_y:77}D{i:31;anchors_height:39;anchors_width:501;anchors_x:25;anchors_y:77}
D{i:27;anchors_height:39;anchors_width:501;anchors_x:25;anchors_y:77}D{i:32;anchors_height:491;anchors_width:501;anchors_x:25;anchors_y:77}
D{i:33;anchors_width:501;anchors_x:27;anchors_y:77}D{i:37;anchors_width:501;anchors_x:27;anchors_y:77}
D{i:38;anchors_height:39;anchors_width:501;anchors_x:27;anchors_y:42}D{i:39;anchors_height:39;anchors_width:200;anchors_x:25;anchors_y:42}
D{i:40;anchors_height:200;anchors_width:200;anchors_x:25}D{i:36;anchors_width:200;anchors_y:77}
D{i:41;anchors_height:200;anchors_width:200;anchors_y:77}D{i:42;anchors_height:39;anchors_width:501;anchors_x:25;anchors_y:42}
D{i:44;anchors_height:200;anchors_width:200;anchors_y:77}D{i:45;anchors_height:200;anchors_width:200;anchors_x:27;anchors_y:77}
D{i:43;anchors_height:39;anchors_width:501;anchors_x:25;anchors_y:42}D{i:35;anchors_width:200}
D{i:46;anchors_width:501;anchors_x:27}D{i:47;anchors_width:200;anchors_y:77}D{i:34;anchors_width:501;anchors_x:27}
D{i:50;anchors_height:39;anchors_width:200;anchors_y:42}D{i:51;anchors_height:39;anchors_width:200;anchors_y:42}
D{i:49;anchors_width:501;anchors_x:27}D{i:52;anchors_height:200;anchors_width:200}
D{i:54;anchors_height:39;anchors_y:42}D{i:55;anchors_height:200;anchors_width:200}
D{i:53;anchors_height:200;anchors_width:200;anchors_y:42}D{i:56;anchors_height:200;anchors_width:200}
D{i:48;anchors_width:200;anchors_x:27;anchors_y:77}
}
##^##*/
