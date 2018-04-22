import QtQuick 2.6
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.3

RowLayout {
    anchors.left: parent.left
    anchors.leftMargin: 12
    anchors.right: parent.right
    anchors.rightMargin: 12
    spacing: 8

    RadioButton {
        exclusiveGroup: radioGroup
        checked: false
    }

    Text {
        text: "Small"
    }

    Text {
        anchors.right: parent.right
        text: "5MB"
    }

}
