import QtQuick 1.1
import com.nokia.meego 1.1

Dialog {
    id: root

    width: parent.width
    content: Item {
        height: column.height
        anchors {
            left: parent.left
            right: parent.right
            margins: 16
        }

        Column {
            id: column

            anchors {
                left: parent.left
                right: parent.right
                top: parent.top
            }
            spacing: 16

            Label {
                width: parent.width
                font.family: "Nokia Pure Headline"
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                font.pixelSize: 32
                color: "white"
                text: "About MeeShopGUI"
            }

            Label {
                width: parent.width
                horizontalAlignment: Text.AlignHCenter
                color: "#757575"
                font.family: "Nokia Pure Text"
                text: "Version: α 0.2.0 "
            }

            Label {
                width: parent.width
                wrapMode: Text.WordWrap
                horizontalAlignment: Text.AlignHCenter
                color: "white"
                font.family: "Nokia Pure Text"
                text: "A new, fully working App Store for Nokia N9"
            }
            Label {
                width: parent.width
                font.family: "Nokia Pure Headline"
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                font.pixelSize: 32
                color: "white"
                text: "Creators:"
            }

            Rectangle {
                width: parent.width
                height: 50
                color: "transparent"
                Text {
                    x: 70
                    y: -5
                    color: "#ffffff"
                    text: qsTr("IarChep -  main developer")
                    font.bold: false
                    smooth: true
                    font.pixelSize: 20
                    font.family: "Nokia Pure Text"
                }
                Image {
                    id: image1

                    width: 50
                    height: 50
                    source: "images/1688464215193.jpg"
                }
                Text {
                    id: text5
                    x: 70
                    y: 28
                    color: "#ffffff"
                    text: qsTr("Contact: <a href='mailto:yarchepel@gmail.com?subject=MeeShopGUI'>yarchepel@gmail.com</a>")
                    smooth: true
                    font.pixelSize: 20
                    font.family: "Nokia Pure Text"
                    font.bold: false
                }

            } Rectangle {
                width: parent.width
                height: 50
                color: "transparent"

                Text {
                    id: text4
                    x: 80
                    y: 15
                    width: 260
                    height: 14
                    color: "#ffffff"
                    text: qsTr("The biggest thanks ever. He created XMLs for sync, dumped icons, etc.")
                    smooth: true
                    font.pixelSize: 15
                    font.family: "Nokia Pure Text"
                    font.bold: false
                }

                Image {
                    id: image3
                    width: 50
                    height: 50
                    source: "images/1688464215193.jpg"
                }
                Text {
                    id: text6
                    x: 80
                    y: 25
                    color: "#ffffff"
                    text: qsTr("Contact: <a href='mailto:dredlok706@yandex.com?subject=MeeShopGUI'>yarchepel@gmail.com</a>")
                    smooth: true
                    font.pixelSize: 15
                    font.bold: false
                    font.family: "Nokia Pure Text"
                }
            }




        }
    }
}

