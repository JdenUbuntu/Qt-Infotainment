import QtQuick 2.0

Rectangle {
    id:bottomBar
    anchors{
        left:parent.left
        right:parent.right
        bottom:parent.bottom
    }
    Image {
        id: carIcon
        anchors{
            left:parent.left
            leftMargin:20
            verticalCenter:parent.verticalCenter
        }
        height:parent.height * .75
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/images/sports-car.png"
    }
    color:"black"
    height:parent.height / 20
}

