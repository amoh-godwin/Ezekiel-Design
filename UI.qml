import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.5
import QtGraphicalEffects 1.0
import "main.js" as MScript

ApplicationWindow {
    id: window
    visible: true
    width: 320
    height: 480

    StackView {
        width: parent.width
        height: parent.width
        id: stackView
        initialItem: first

        Component {
            id: first


            ColumnLayout {
                anchors.top: parent.top
                width: window.width

                Rectangle {
                    id: wise
                    anchors.top: parent.top
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
                    width: window.width
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
                            Layout.preferredHeight: parent.width / 2
                            Layout.maximumHeight: 500
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
                            height: title.contentHeight + title.padding

                            Text {
                                id: title
                                width: window.width - 24
                                //elide: Text.ElideRight
                                wrapMode: Text.WordWrap
                                padding: 16
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
                                    anchors.leftMargin: 16
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
                                    anchors.rightMargin: 16
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
                visible: false
                z: 2
                width: window.width
                height: window.height
                color: "#97000000"

                MouseArea {
                    anchors.fill: parent
                }

                ColumnLayout {
                    id: secondCol
                    width: window.width - 48
                    anchors.centerIn: parent
                    spacing: 0

                    Rectangle {
                        id: seconImgRect
                        anchors.horizontalCenter: parent.horizontalCenter
                        Layout.fillWidth: true
                        height: 144
                        color: "purple"

                        Image {
                            width: parent.width
                            height: parent.height
                            source: "images/preview.jpg"
                            fillMode: Image.PreserveAspectFit
                        }

                    }

                    Rectangle {
                        anchors.horizontalCenter: parent.horizontalCenter
                        Layout.fillWidth: true
                        height: 174
                        color: "white"

                        ScrollView {
                            width: parent.width
                            height: parent.height
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.fill: parent
                            anchors.topMargin: 12
                            anchors.bottomMargin: 12


                            ColumnLayout {
                                id: radioCont
                                width: secondCol.width - 24
                                spacing: 12

                                ExclusiveGroup { id: radioGroup }

                                Component.onCompleted: {
                                    MScript.start()
                                }

                            }

                        }

                    }

                    Rectangle {
                        anchors.horizontalCenter: parent.horizontalCenter
                        Layout.fillWidth: true
                        height: 48
                        color: "#ccc"

                        DownBtn {
                            anchors.centerIn: parent
                        }

                    }



                }

            }


        }

        Component {
            id: second
        }


    }

}
