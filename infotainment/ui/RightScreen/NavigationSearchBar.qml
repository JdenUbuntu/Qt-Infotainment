import QtQuick 2.0
import QtLocation 5.6
import QtPositioning 5.6

Rectangle{
    id:navSeachBox
    radius: 5
    color: "#e2e3e1"

    Image {
        id: searchIcon
        height:parent.height * .45
        fillMode: Image.PreserveAspectFit
        anchors{
            left:parent.left
            leftMargin:25
            verticalCenter: parent.verticalCenter
        }
        source: "qrc:/ui/images/magnifying-glass.png"
    }

    Text{
        id: searchBarText
        color:"black"
        text:"Navigate"
        visible: navigationTextInput.text === ""
        anchors{
            verticalCenter:parent.verticalCenter
            left: searchIcon.right
            leftMargin: 25
        }
    }

    TextInput{
        id:navigationTextInput
        clip: true
        anchors{
            top:parent.top
            bottom: parent.bottom
            right: parent.right
            left: searchIcon.right
            leftMargin: 25
        }

        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 16
    }
}
