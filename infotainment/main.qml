import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Dialogs 1.2
import "ui/BottomBar"
import "ui/RightScreen"
import "ui/LeftScreen"

ApplicationWindow {
    visible: true
    width: 1280
    height: 720
    title: qsTr("Tesla Model Y")


    LeftScreen{
        id:leftScreen
    }

    RightScreen{
        id:rightScreen
    }
    BottomBar{
        id:bottomBar
    }

    MainForm {

    }

    MessageDialog {
        id: messageDialog
        title: qsTr("Note!")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }
}
