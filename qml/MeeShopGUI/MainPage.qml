import QtQuick 1.1
import com.nokia.meego 1.0
import com.getapps.meeshop 1.0
import "images"
import "Pages"
Page {
    tools: commonTools

    orientationLock: PageOrientation.LockPortrait

    GetApps {
        id: getApps
        Component.onCompleted: {
            // Запускаем получение данных после завершения создания компонента
            getApps.getApps()
        }
    }



    ToolBarLayout {
        id: commonTools
        ToolIcon {
            platformIconId: "toolbar-view-menu"
            anchors.right: (parent === undefined) ? undefined : parent.right
            onClicked: (myMenu.status === DialogStatus.Closed) ? myMenu.open() : myMenu.close()
        }
    }


    Menu {
        id: myMenu
        visualParent: pageStack
        MenuLayout {
            MenuItem { text: qsTr("Settings") }
            MenuItem { text: qsTr("About");
                onClicked: aboutDialog.open()}
        }
    }
    Rectangle{
        z:4
        id: loadingRect
        height: parent.height
        width: parent.width
        visible: true
        color: "#e0e1e2"
        BusyIndicator {
            z: 5
            id: indicator
            platformStyle: BusyIndicatorStyle { size: "large" }
            running: true
            anchors.centerIn: parent
            visible: true

        }
        Connections {
                target: getApps
                onProcessFinished: {
                    var animation = Qt.createQmlObject('import QtQuick 1.1; SequentialAnimation { NumberAnimation { target: loadingRect; property: "opacity"; from: 1; to: 0; duration: 375 } }', parent);
                    animation.start();
                    indicator.running = false;
                }
            }
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
             text: "MeeShop: Home"
             font.pixelSize: 30
             color: "white"
             anchors.left: parent.left
             anchors.leftMargin: 20
             verticalAlignment: Text.AlignVCenter
             height: parent.height
             z:0


         }
    }

    Flickable {
        id: mainFlick
        height: 1000
        width: 480
        y:70
        contentHeight: 1650 // (1000 * 2)
        interactive: true
        flickableDirection: Flickable.VerticalFlick
        clip: true

        Rectangle {
            z: 1
            height: 60
            color: "#e0e1e2"
            width: parent.width
             Label{
                 text: "Discover:"
                 font.pixelSize: 40
                 anchors.left: parent.left
                 anchors.leftMargin: 20
                 font.family: "Nokia Pure Text"
             }
        }

        Rectangle{
            z:1
            y: 54
            width: parent.width
            height: 300
            color: "black"
            Image{
                id: appImage

                source:"images/SecondSplash.png"

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onPressed: {
                        appImage.opacity = 0.8
                    }
                    onReleased: {
                        appImage.opacity = 1
                    }
                    onClicked: pageStack.push(appdown,{ appName: "MeeShop" })
                }
            }
        }



        Rectangle {
               color: "#e0e1e2"
               z: 1
               width: parent.width
               height: 60
               y: 357
            Label{
            text: "Apps:"
            font.pixelSize: 40
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 20
            font.family: "Nokia Pure Text"
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
                buttonWidth: 100
                buttonHeight: 40
            }
                         text: "All Apps"
                         y: 457
                         anchors.right: parent.right
                         anchors.verticalCenter: parent.verticalCenter
                         anchors.rightMargin: 20
                         onClicked: pageStack.push(allApps)
                     }
   }
        Column {
            z:1
            y: 415
            Repeater{
                model: getApps.appInfo.slice(0, 10)
                delegate: Rectangle {
                    id: appelem1
                    width: 480
                    height: 90
                    color: mouseArea.pressed === true ? "#bbbcbe" : "#e0e1e2"
                    Image {
                        id: icon
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 20
                        source: "http://wunderwungiel.pl/MeeGo/openrepos/icons/" + modelData.split(',')[3]
                    }
                    Text {
                        y:15
                        x:102
                        text: modelData.split(',')[0]
                        color: "black"
                        font.pixelSize: 25
                    }
                    Text {
                        y: 48
                        x:102
                        text: "Size: " + modelData.split(',')[1]
                        color: "black"
                        font.pixelSize: 20
                    }
                    MouseArea {
                        id: mouseArea
                        anchors.fill: appelem1
                        onClicked: pageStack.push(appdown, { appName: modelData.split(',')[0], appSize: modelData.split(',')[1], appIcon: icon.source, appPkg: modelData.split(",")[4]})

                    }
                }
            }
        }
            }


         }










