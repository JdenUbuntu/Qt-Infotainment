import QtQuick 2.0
import QtLocation 5.6
import QtPositioning 5.6


Rectangle {
    id:rightScreen
    anchors{
        top:parent.top
        right:parent.right
        bottom:bottomBar.top
    }

   Plugin {
       id: mapPlugin
       name: "osm"
   }

   Image  {
       id: mapImage
       source: "qrc:/ui/images/penang.png"
       anchors.fill: parent
   }

   Image {
       id: lockImage
       anchors {
           left:parent.left
           top:parent.top
           margins:20
       }
       width: parent.width / 40
       fillMode:Image.PreserveAspectFit
       source: (systemHandler.carLocked ? "qrc:/ui/images/padlock.png" : "qrc:/ui/images/padlock-unlock.png")
       MouseArea {
           anchors.fill: parent
           onClicked: systemHandler.setCarLocked( !systemHandler.carLocked )
       }
   }

Text{
    id: dateTimeDisplay
    anchors{
        left: lockImage.right
        leftMargin: 40
        bottom: lockImage.bottom
    }
    font.pixelSize: 16
    font.bold: true
    color: "black"

    text: systemHandler.currentTime
}
    width:parent.width * 2/3
}
