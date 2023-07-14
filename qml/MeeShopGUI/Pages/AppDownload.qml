import QtQuick 1.1
import com.nokia.meego 1.0
import "images"
import com.nokia.extras 1.1
import com.process.meeshop 1.0

Page {
    tools: commonTools
    orientationLock: PageOrientation.LockPortrait
    property bool  installationInProgress: false
    property string appName
    property string appSize
    property string appIcon
    property string appPkg

    ToolBarLayout {
        id: commonTools
        visible: true
        ToolIcon { iconId: "icon-m-toolbar-back"; onClicked: pageStack.pop(); }


    }

    Process {
        id: process

    }



    Rectangle{
        id: header
        width: parent.width
        height: 70
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#4DA1FF" }
            GradientStop { position: 1.0; color: "#1E90FF" }
        }
        Text {
            text: appName
            font.pixelSize: 30
            font.family: "Nokia Pure Text Headline"
            color: "white"
            anchors.left: parent.left
            anchors.leftMargin: 20
            verticalAlignment: Text.AlignVCenter
            height: parent.height
            z:0

        }

    }
    Rectangle{
        z:1
        y: 70
        width: parent.width
        height:200
        color: Qt.darker("#e0e1e2",1.2)
        Text{
            x: 9
            y: 80
            width: 342
            height: 40
            anchors.centerIn: parent
            text: "App's splash or screenshot"
            font.pointSize: 22
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: 0
            font.family: "Nokia Pure Text Light"
            color: "gray"
        }
    }
    Rectangle {
        z:2
        width: parent.width
        height: 100
        y: 280
        color: "#e0e1e2"
        Image {
            id: icon
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 20
            source: appIcon
        }
        Text {
            y: 15
            x:102
            text: appName
            color: "black"
            font.pixelSize: 25
        }
        Text {
            id: sizeText
            y: 48
            x:102
            text: "Size: " + appSize
            color: "black"
            font.pixelSize: 20
        }
        Text{
            id: statusText
            anchors.horizontalCenter: parent.horizontalCenter
            y: 80
            font.pixelSize: 23
        }

        Button {
            platformStyle: ButtonStyle {
                fontFamily: "Nokia Pure Text"
                fontPixelSize: 21
                fontCapitalization: Font.SmallCaps
                textColor: "black"
                pressedTextColor: "gray"
                disabledTextColor: "gray"
                checkedTextColor: "gray"
                buttonWidth: 130
                buttonHeight: 45
            }
            id: installButt
            enabled: true
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: 20
            text: "Install"
            y: 48
            x:102
            onClicked: {
                installButt.enabled = false
                installButt.text = "Installing..."
                installationInProgress = true
                statusText.visible = true
                statusText.text = "Running aegis-apt-get update"
                process.update()

            }

        }
        Connections {
            target: process
            onUpdateFinished: {
                if (success) {
                    console.log(appPkg)
                    console.log("Installation started")
                    statusText.text = "Installing the app"
                    process.install(appPkg)
                } else {
                    installButt.text = "Error"
                    console.log("Error while updating")
                    installButt.enabled = true
                }
            }
            onInstallationFinished: {
                if (success) {
                    installButt.text = "Installed"
                    statusText.text = "Installed!"
                } else {
                    installButt.text = "Error"
                    console.log("Error while installing")
                    installButt.enabled = true
                }
            }
        }
    }
    Label{
        id: descHeader
        text: "Description:"
        anchors.left: parent.left
        anchors.leftMargin: 20
        y: 390
        font.pixelSize: 40
    }
    Label{
        id: desc
        text: "Here is an exaple of app's description"
        anchors.left: parent.left
        anchors.leftMargin: 20
        y: 440
        font.pixelSize: 25
    }


    onStatusChanged: {
        if (status === PageStatus.Active) {
           statusText.visible = false
                installButt.text = "Install"
                installButt.enabled = true
            }

        }

}
