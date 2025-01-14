import QtQuick 2.0

Rectangle {
        id:leftScreen
        anchors{
            top:parent.top
            left:parent.left
            right:rightScreen.left
            bottom:bottomBar.top
        }
        Image {
            id: carRender
            anchors.centerIn: parent
            width:parent.width * .75
            fillMode: Image.PreserveAspectFit
            source: "qrc:/ui/images/carrender.jpg"
        }
        width:parent.width * 1/3

    }
