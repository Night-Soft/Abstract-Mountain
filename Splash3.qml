// Created By Night-App
// Write to me NightSoftware@outlook.com

// Free to use
import QtQuick 2.5
import QtQuick.Window 2.10

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
                introAnimation.running = true
                introAnimation2.running = true
            }
        }
        Rectangle {
            id: loading
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
                sourceSize: Qt.size(width, height)
                source: "img/bounceGreen.svg"
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
            PropertyAnimation {
            id: opacityAnim
            property: "opacity"
            target: loading
            from: 0
            to: 1
            running: true
            duration: 1000
            }
            PropertyAnimation {
            id: scaleAnim
            property: "scale"
            target: loading
            from: 0
            to: 1
            running: true
            duration: 1000
            }
        }

        Rectangle {
            id: secondsRect
            width: 550
            height: 81
            color: "#00000000"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 0

            Text {
                id: date
                x: 25
                width: 501
                height: 150
                Text {
                    id: hours
                    y: 118
                    width: 90
                    height: 39
                    color: "#ffffff"
                    text: qsTr("hours")
                    elide: Text.ElideNone
                    anchors.leftMargin: 10
                    anchors.bottomMargin: 0
                    anchors.bottom: parent.bottom
                    anchors.left: parent.left
                    font.underline: false
                    font.italic: true
                    font.family: "Tahoma"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    transformOrigin: Item.Center
                    font.pixelSize: 25
                }

                Timer {
                    interval: 1000; running: true; repeat: true
                    onTriggered: date.text = Qt.formatDateTime(new Date(),"hh : mm : ss");
                }
                text: Qt.formatDateTime(new Date(),"hh : mm : ss");
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                transformOrigin: Item.Center
                font.strikeout: false
                font.underline: false
                font.italic: false
                font.bold: false
                font.pointSize: 75
                color: "#ffffff"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                opacity:1
                font { family: "Tahoma"; weight: Font.Thin;capitalization: Font.Capitalize}

                Text {
                    id: minutes
                    y: 118
                    width: 110
                    height: 39
                    color: "#ffffff"
                    text: qsTr("minutes")
                    lineHeight: 1
                    anchors.leftMargin: 197
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideNone
                    font.pixelSize: 25
                    transformOrigin: Item.Center
                    anchors.bottomMargin: 0
                    anchors.bottom: parent.bottom
                    anchors.left: parent.left
                    font.family: "Tahoma"
                    font.underline: false
                    horizontalAlignment: Text.AlignHCenter
                    font.italic: true
                }

                Text {
                    id: seconds
                    y: 118
                    width: 108
                    height: 39
                    color: "#ffffff"
                    text: qsTr("seconds")
                    anchors.leftMargin: 393
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideNone
                    font.pixelSize: 25
                    transformOrigin: Item.Center
                    anchors.bottomMargin: 0
                    lineHeight: 1
                    anchors.bottom: parent.bottom
                    anchors.left: parent.left
                    font.family: "Tahoma"
                    font.underline: false
                    horizontalAlignment: Text.AlignHCenter
                    font.italic: true
                }

            }
        }

        Rectangle {
            id: year
            x: 415
            y: 604
            width: 536
            height: 164
            color: "#00000000"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter

            Rectangle {
                id: rectangle4
                x: 0
                y: 0
                width: 576
                height: 163
                color: "#00000000"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

                Rectangle {
                    id: rectangle3
                    x: 417
                    y: 156
                    width: 97
                    height: 71
                    color: "#252324"
                    radius: 10
                    anchors.verticalCenter: parent.verticalCenter
                    border.width: 0
                }

                Rectangle {
                    id: rectangle2
                    x: 281
                    y: 156
                    width: 103
                    height: 71
                    color: "#252324"
                    radius: 10
                    anchors.verticalCenter: parent.verticalCenter
                    border.width: 0
                }

                Rectangle {
                    id: rectangle
                    x: 60
                    y: 156
                    width: 187
                    height: 71
                    color: "#252324"
                    radius: 10
                    anchors.verticalCenter: parent.verticalCenter
                    border.width: 0
                }

                Text {
                    id: date1
                    x: 37
                    y: 113
                    width: 501
                    height: 157
                    color: "#26c534"
                    text: Qt.formatDateTime(new Date(),"yyyy  MM  dd")
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
                    Text {
                        id: hours1
                        y: 118
                        width: 171
                        height: 39
                        color: "#ffffff"
                        text: qsTr("years")
                        anchors.left: parent.left
                        horizontalAlignment: Text.AlignHCenter
                        font.family: "Tahoma"
                        anchors.bottom: parent.bottom
                        font.italic: true
                        font.pixelSize: 25
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 31
                        transformOrigin: Item.Center
                        elide: Text.ElideNone
                        font.underline: false
                        verticalAlignment: Text.AlignVCenter
                    }

                    Timer {
                        repeat: true
                        interval: 1000
                        running: true
                    }

                    Text {
                        id: minutes1
                        y: 118
                        width: 85
                        height: 39
                        color: "#ffffff"
                        text: qsTr("months")
                        anchors.leftMargin: 254
                        verticalAlignment: Text.AlignVCenter
                        elide: Text.ElideNone
                        font.pixelSize: 25
                        transformOrigin: Item.Center
                        anchors.bottomMargin: 0
                        lineHeight: 1
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        font.family: "Tahoma"
                        font.underline: false
                        horizontalAlignment: Text.AlignHCenter
                        font.italic: true
                    }

                    Text {
                        id: seconds1
                        y: 118
                        width: 98
                        height: 39
                        color: "#ffffff"
                        text: qsTr("days")
                        anchors.leftMargin: 378
                        verticalAlignment: Text.AlignVCenter
                        elide: Text.ElideNone
                        font.pixelSize: 25
                        transformOrigin: Item.Center
                        anchors.bottomMargin: 0
                        lineHeight: 1
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        font.family: "Tahoma"
                        font.underline: false
                        horizontalAlignment: Text.AlignHCenter
                        font.italic: true
                    }
                    font.pointSize: 60
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
    D{i:25;anchors_y:116}D{i:24;anchors_y:533}
}
##^##*/
