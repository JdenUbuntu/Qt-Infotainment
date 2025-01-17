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
       name: "mapboxgl"
   }

   Map  {
       id: map
       anchors.fill:parent
       plugin:mapPlugin
       center: QtPositioning.coordinate(37.466, -122.144)
       zoomLevel: 14
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
Text{
    id: outdoorTemperatureDisplay
    anchors{
        left: dateTimeDisplay.right
        leftMargin: 40
        bottom: lockImage.bottom
    }
    font.pixelSize: 16
    font.bold: true
    color: "black"

    text: systemHandler.outdoorTemp + "°C"
}
Text{
    id: userNameDisplay
    anchors{
        left: outdoorTemperatureDisplay.right
        leftMargin: 40
        bottom: lockImage.bottom
    }
    font.pixelSize: 16
    font.bold: true
    color: "black"

    text: systemHandler.userName
}

NavigationSearchBar{

    id: navSearchBox
    width: parent.width * 1/3
    height: parent.height * 1/12

    anchors{
        left: lockImage.left
        top: lockImage.bottom
        topMargin: 15
    }
    }
    width:parent.width * 2/3
}
