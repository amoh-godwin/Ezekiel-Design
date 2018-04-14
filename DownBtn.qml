import QtQuick 2.6
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.3

Rectangle {
    width: 120
    height: 32
    color: "white"
    border.width: 2
    border.color: "dodgerblue"
    radius: 3

    signal click()

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        hoverEnabled: true

        onEntered: {
            parent.color = "dodgerblue"
            parent.children[1].color = "white"
        }

        onPressed: {
            parent.color = "#00ccff"
            parent.children[1].color = "white"
            click()
        }

        onExited: {
            parent.color = "white"
            parent.children[1].color = "dodgerblue"
        }
    }

    Text {
        anchors.centerIn: parent
        text: "DOWNLOAD"
        color: "dodgerblue"
        font.pixelSize: 16
    }

}
