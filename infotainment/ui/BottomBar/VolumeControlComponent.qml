import QtQuick 2.0

Item{
    property string fontColor: "white"
    width: 90 * ( parent.width/1280 )

    Connections{
        target: audioController
        function onVolumeLevelChanged() {
            volumeIcon.visible = false
            volumeTextLabel.visible = true
            visibleTimer.stop()
            visibleTimer.start()
        }
    }

    Timer{
        id:visibleTimer
        interval: 500
        repeat: false
        onTriggered: {
            volumeIcon.visible = true
            volumeTextLabel.visible = false
        }
    }

    Rectangle{
        id:volumedownButton
        anchors{
            right:volumeIcon.left
            rightMargin: 15
            top:parent.top
            bottom:parent.bottom

        }
        width: height/2
        color: "black"

        Text{
            id:volumedownText
            color: fontColor
            anchors.centerIn: parent
            text:"<"
            font.pixelSize: 18
        }
        MouseArea{
            anchors.fill:parent
            onClicked: {
                audioController.incrementVolume(-1)
            }
        }
    }


    Rectangle{
        id:volumeupButton
        anchors{
            left :volumeIcon.right
            leftMargin:15
            right:parent.right
            top:parent.top
            bottom:parent.bottom

        }
        width: height/2
        color: "black"

        Text{
            id:volumeupText
            color: fontColor
            anchors.centerIn:parent
            text:">"
            font.pixelSize: 18
        }
        MouseArea{
            anchors.fill:parent
            onClicked: {
            audioController.incrementVolume(1)
            }
        }
    }

    Image {
        id:volumeIcon
        height:parent.height * 0.5
        fillMode: Image.PreserveAspectFit
        anchors{
            left:volumedownButton.right
            leftMargin: 15
            verticalCenter: parent.verticalCenter
        }
        source:  {
            if (audioController.volumeLevel <= 0)
                return "qrc:/ui/images/mute(1).png";
            else  (audioController.volumeLevel > 0)
                return "qrc:/ui/images/speaker.png";

        }
        Text {
            id:volumeTextLabel
            visible: !volumeIcon.visible
            anchors{
                centerIn:volumeIcon
            }
            color: fontColor
            font.pixelSize: 20
            text: audioController.volumeLevel
        }
    }
}



