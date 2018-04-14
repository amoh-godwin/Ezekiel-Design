import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.5
import QtGraphicalEffects 1.0

ApplicationWindow {
    id: window
    visible: true
    width: 512
    height: 480

    ColumnLayout {
        width: parent.width

        Rectangle {
            id: wise
            Layout.fillWidth: true
            height: 40
            color: "white"

            RowLayout {
                anchors.fill: parent
                anchors.margins: 12

                Rectangle {
                    width: 120
                    height: 24

                    Text {
                        font.pixelSize: 16
                        text: "Ezekiel"
                    }

                }

                Row {
                    anchors.right: parent.right

                    Rectangle {
                        width: 24
                        height: 24
                        color: "yellow"
                    }

                    Rectangle {
                        width: 24
                        height: 24
                        color: "dodgerblue"
                    }

                    Rectangle {
                        width: 24
                        height: 24
                        color: "lime"
                    }

                }

            }

        }

        DropShadow {
            source: wise
            anchors.fill: wise
            z: -1
            horizontalOffset: 0
            verticalOffset: -5
            color: "#77000000"
            radius: 17
            samples: 35
        }

        Rectangle {
            Layout.fillWidth: true
            height: 400
            anchors {
                top: parent.children[0].bottom
                left: parent.left
                right: parent.right
                topMargin: 12
                leftMargin: 12
                rightMargin: 12
            }

            //color: "red"

            ColumnLayout {
                width: parent.width
                spacing: 0

                Rectangle {
                    id: imgRect
                    Layout.fillWidth: true
                    height: 200
                    color: "purple"

                    Image {
                        width: parent.width
                        height: parent.height
                        fillMode: Image.PreserveAspectFit
                        source: "images/preview.jpg"
                    }
                }

                Rectangle {
                    id: titleField
                    Layout.fillWidth: true
                    height: title.contentHeight + 8

                    Text {
                        id: title
                        width: window.width - 24
                        //elide: Text.ElideRight
                        wrapMode: Text.WordWrap
                        padding: 8
                        font.bold: false
                        text: "The goose or the egg which one came first to this universe first?"
                        font.family: "Roboto Thin"
                        font.pixelSize: 24
                        color: "#98000000"
                        font.weight: Font.ExtraLight

                    }

                }

                Rectangle {
                    anchors.top: titleField.bottom
                    Layout.fillWidth: true
                    height: 48

                    RowLayout {
                        width: parent.width
                        anchors.verticalCenter: parent.verticalCenter
                        spacing: 4

                        Row {
                            Layout.preferredWidth: 120
                            anchors.left: parent.left
                            anchors.leftMargin: 8
                            spacing: 4
                            Text {
                                font.family: "Segoe UI"
                                color: "#77000000"
                                text: "Basic - "
                            }

                            Text {
                                text: "2MB"
                                color: "#77000000"
                            }

                            Text {
                                text: "<span>change</span>"
                                color: "dodgerblue"

                                MouseArea {
                                    anchors.fill: parent
                                    hoverEnabled: true

                                    onEntered: {
                                        parent.color = "#00eeff"
                                    }

                                    onPressed: {
                                        console.log('te')
                                    }

                                    onExited: {
                                        parent.color = "dodgerblue"
                                    }

                                }

                            }

                        }

                        Rectangle {
                            Layout.fillWidth: true
                            height: 48
                            color: "white"
                        }

                        DownBtn {
                            anchors.right: parent.right
                            anchors.rightMargin: 8
                            onClick: {
                                console.log('clicked')
                            }
                        }

                    }

                }

            }

        }

    }

    Rectangle {
        width: parent.width
        height: parent.height
        color: "#97000000"

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 24

        }

    }

}
