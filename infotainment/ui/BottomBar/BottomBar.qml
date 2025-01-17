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

    HVACComponent{
        id:passengerHVACControl
        anchors{
            top:parent.top
            bottom:parent.bottom
            left: carIcon.right
            leftMargin: 150
        }
        hvacController: passengerHVAC
    }

    HVACComponent{
        id:driverHVACControl
        anchors{
            top:parent.top
            bottom:parent.bottom
            right: volumeControl.left
            rightMargin:200

        }
        hvacController: driverHVAC
    }

    VolumeControlComponent {
        id:volumeControl
        anchors{
                    top:parent.top
                    bottom:parent.bottom
                    right: parent.right
                    rightMargin: 90
                }
    }

    color:"black"
    height:parent.height / 15
}

