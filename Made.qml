import QtQuick 2.5

Rectangle {
    width: 140
    height: 104
    color: "#00000000"

    Rectangle {
        id: rectangle
        width: 140
        height: 104
        color: "#00000000"

        Image {
            id: layer_1
            x: 0
            y: 0
            width: 140
            height: 104
            anchors.verticalCenter: parent.verticalCenter
            source: "made_images/layer_1.png"
            opacity: 1
        }

        Image {
            id: vector_layer_1
            x: 11
            y: 12
            width: 143
            height: 92
            source: "made_images/vector_layer_1.png"
            opacity: 1
        }


    }
}
