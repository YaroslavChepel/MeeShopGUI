import QtQuick 1.1
import com.nokia.meego 1.0
import com.getrss.meeshop 1.0
import "images"

Page {
    GetRss {
        id: getRss

    }
    tools: commonTools
    orientationLock: PageOrientation.LockPortrait
    property int load: 0
    ToolBarLayout {
        id: commonTools
        visible: true
        ToolIcon { iconId: "icon-m-toolbar-back"; onClicked: pageStack.pop(mainPage); }
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
            MenuItem { text: qsTr("Sample menu item") }
        }
    }

    Rectangle{
        id: header
        z:2
        width: parent.width
        height: 70
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#4DA1FF" }
            GradientStop { position: 1.0; color: "#1E90FF" }
        }
        Text {
            text: "MeeShop: RSS Feeds"
            font.pixelSize: 30
            color: "white"
            anchors.left: parent.left
            anchors.leftMargin: 20
            verticalAlignment: Text.AlignVCenter
            height: parent.height
            z:0

        }
        Image {
            source: "images/icon-m-common-combobox-arrow-selected.png"
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: 20

        }

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onPressed: {
                header.gradient.stops[0].color = Qt.darker(header.gradient.stops[0].color, 1.2)
                header.gradient.stops[1].color = Qt.darker(header.gradient.stops[1].color, 1.2)

            }
            onReleased: {
                header.gradient.stops[0].color = "#4DA1FF"
                header.gradient.stops[1].color = "#1E90FF"
            }
            onClicked: catDialog.open()
        }

    }
    Rectangle {
        z: 1
        height: 50
        y: 70
        color: "#e0e1e2"
        width: parent.width
         Label{
             text: "Select a country:"
             font.pixelSize: 35
             anchors.verticalCenter: parent.verticalCenter
             anchors.left: parent.left
             anchors.leftMargin: 20
             font.family: "Nokia Pure Text"
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
                target: getRss
                onProcessFinished: {
                    var animation = Qt.createQmlObject('import QtQuick 1.1; SequentialAnimation { NumberAnimation { target: loadingRect; property: "opacity"; from: 1; to: 0; duration: 375 } }', parent);
                    animation.start();
                    indicator.running = false;
                }
            }
    }
    Flickable {
        id: appsList
        height: column.height
        width: 480
        y: 120
        contentHeight: column.height
        interactive: true
        flickableDirection: Flickable.VerticalFlick
        clip: true


        Column {
            id: column
            z: 1
            Repeater {
                model: getRss.appInfo
                delegate: Rectangle {
                    id: appelem1
                    width: 480
                    height: 90
                    color: mouseArea.pressed === true ? "#bbbcbe" : "#e0e1e2"

                    Image {
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 20
                        source: "images/icon-m-content-feed-inverse.png"
                    }

                    Text {
                        anchors.verticalCenter: parent.verticalCenter
                        x: 102
                        text: modelData.split(",")[0]
                        font.family: "Nokia Pure Text Light"
                        font.pixelSize: 25
                    }

                    MouseArea {
                        anchors.fill: appelem1
                        hoverEnabled: true

                        id: mouseArea

                        onClicked: pageStack.push(feedList, { country: modelData.split(',')[0], countryFile: modelData.split(',')[1]})
                    }
                }
            }

        }
    }




    onStatusChanged: {
        if (status === PageStatus.Active) {
            if (load == 0) {
                getRss.getRss("countries.xml");
                load = 1
            }

        }
    }
}
