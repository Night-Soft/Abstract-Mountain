import QtQuick 2.5
import QtQuick.Window 2.10

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: "splash"

    Image {
        id: root
        source: "./img/backgroun2.png"         // source: "./img/background.jpg" // in splash

        fillMode: Image.PreserveAspectCrop
        property int stage
        width: 1366
        height: 768

        onStageChanged: {
            if (stage == 1) {
                introAnimation.running = true
                introAnimation2.running = true
            }
        }
        Rectangle {
            id: rectangle1
            x: 402
            y: 85
            width: 351
            height: 300
            color: "#00ffffff"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            Image {
                id: imageBlue
                width: 270
                height: 270
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                smooth: true
                //             x: 94
                //             y: 16
                sourceSize: Qt.size(width, height)
                source: "img/bounceBlue.svg"

            }
            Image {
                id: imagePink
                width: 270
                height: 270
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                smooth: true
                //             x: 94
                //             y: 16
                sourceSize: Qt.size(width, height)
                source: "img/bouncePink.svg"
            }

            Text {
                id: element
                x: 90
                y: 186
                color: "#ffffff"
                text: qsTr("Loading...")
                anchors.verticalCenterOffset: 0
                anchors.horizontalCenterOffset: 1
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.family: "Tahoma"
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 36
            }

            RotationAnimator {
                id: introAnimation
                target: imageBlue;
                loops: Animation.Infinite
                from: 0;
                to: 360;
                duration: 8000
                running: true
            }
            RotationAnimator {
                id: introAnimation2
                target: imagePink;
                loops: Animation.Infinite
                from: 360;
                to: 0;
                duration: 5000
                running: true
            }



        }

        Text {
            id: date
            x: 29
            y: 134
            Timer {
                interval: 1000; running: true; repeat: true
                onTriggered: date.text = Qt.formatDateTime(new Date(),"dddd, hh:mm:ss");
            }
            text: Qt.formatDateTime(new Date(),"dddd, hh:mm:ss");
            anchors.horizontalCenterOffset: 44
            font.pointSize: 28
            color: "#a9a9a9"
            anchors.horizontalCenter: parent.horizontalCenter
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            opacity:1
            font { family: "Tahoma"; weight: Font.Light;capitalization: Font.Capitalize}
        }

        Rectangle {
            id: allDate
            x: 0
            y: 225
            width: 568
            height: 319
            color: "#00000000"


            Image {
                id: image
                x: 240
                y: 368
                width: 192
                height: 192
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                sourceSize: Qt.size(width, height)
                fillMode: Image.PreserveAspectFit
                source: "img/calendar.svg"

                Text {
                    id: element1
                    x: 26
                    y: 38
                    width: 140
                    height: 131
                    Timer {
                        interval: 1000; running: true; repeat: true
                        onTriggered: date.text = Qt.formatDateTime(new Date(),"dddd");
                    }
                    text: Qt.formatDateTime(new Date(),"yyyy \n MM, dd");
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pointSize: 20
                    color: "#ffffff"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    opacity:1
                    font { family: "Tahoma"; weight: Font.Light;capitalization: Font.Capitalize}
                }
            }
        }

    }

}

/*##^##
Designer {
    D{i:3;anchors_height:449;anchors_width:452}D{i:4;anchors_height:78;anchors_width:273;anchors_x:90;anchors_y:186}
D{i:5;anchors_height:449;anchors_width:452}D{i:6;anchors_height:449;anchors_width:452}
D{i:7;anchors_height:78;anchors_width:273;anchors_x:"-401";anchors_y:186}D{i:2;anchors_height:449;anchors_width:452}
D{i:1;anchors_height:480;anchors_width:640;anchors_x:0;anchors_y:0}
}
##^##*/
