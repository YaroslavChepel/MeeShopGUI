import QtQuick 1.1
import com.nokia.meego 1.0
import com.getapps.meeshop 1.0
import "images"

Page {

    property variant filteredList: []
    property int appsListHeight: column.height + 1280

    GetApps {
        id: getApps

    }
    tools: commonTools
    orientationLock: PageOrientation.LockPortrait
    property int apps: 20
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
        z:3
        width: parent.width
        height: 70
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#4DA1FF" }
            GradientStop { position: 1.0; color: "#1E90FF" }
        }
        Text {
            text: "MeeShop: Games"
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

    Rectangle {
        id: searchInput
        width: 480
        height: 60
        z: 2
        y: 70
        color: "#e0e1e2"

        property string searchKeyword: "" // Переменная для хранения ключевого слова поиска

        TextField {
            width: 440
            anchors.centerIn: parent
            placeholderText: "Search..."
            maximumLength: 80

            // Обновление ключевого слова поиска при изменении текста в поле ввода
            onTextChanged: {
                searchInput.searchKeyword = text;
                searchInput.filterApps();
                repeater.model = filteredList.slice(0, apps)
            }
        }
        function filterApps() {
            var keyword = searchKeyword.toLowerCase();
            if (keyword === "") {
               filteredList = getApps.appInfo;
               repeater.model = getApps.appInfo.slice(0, apps)
                appsList.contentHeight = appsListHeight
                // Копирование всех элементов из getApps.appInfo в filteredList
            } else {
            filteredList = getApps.appInfo.filter(function(app) {
                var regex = new RegExp("\\b" + keyword, "i");  // Используем регулярное выражение с границей слова и флагом "i" для игнорирования регистра
                return regex.test(app);


            });
                appsList.contentHeight = column.height
            }

            // Выводим результаты поиска в консоль для проверки
        }


    }
    Flickable {
        // Начальная позиция поля ввода (выше списка)
        id: appsList
        height: column.height
        width: 480
        y: 130
        contentHeight: column.height + 1280

        interactive: true
        flickableDirection: Flickable.VerticalFlick
        clip: true

        Column {
            id: column
            z: 1
            Repeater {
                id: repeater
                model: getApps.appInfo.slice(0, apps)
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
                        y: 15
                        x: 102
                        text: modelData.split(',')[0]
                        color: "black"
                        font.pixelSize: 25
                    }
                    Text {
                        y: 48
                        x: 102
                        text: "Size: " + modelData.split(',')[1]
                        color: "black"
                        font.pixelSize: 20
                    }
                    MouseArea {
                        anchors.fill: appelem1
                        hoverEnabled: true

                        id: mouseArea

                        onClicked: pageStack.push(appdown, { appName: modelData.split(',')[0], appSize: modelData.split(',')[1], appIcon: icon.source, appPkg: modelData.split(",")[4],})
                    }
                }
            }

            Rectangle {
                id: loadRect
                width: 480
                height: 90
                color: mouseArea2.pressed === true ? "#bbbcbe" : "#e0e1e2"
                Text {
                    id: loadRectText
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    text: "Load more apps"
                    color: "black"
                    font.pixelSize: 25
                }
                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    id: mouseArea2
                    onClicked: {
                        if (apps + 20 > getApps.appInfo.length) {
                            apps = getApps.appInfo.length
                            loadRectText.text = "All apps were loaded"
                            loadRect.enabled = false
                        }
                        else {
                            apps += 20
                        }

                        repeater.model = getApps.appInfo.slice(0, apps)
                        appsList.contentHeight = column.height + (90 * apps) - 540
                        appsListHeight = column.height + (90 * apps) - 540
                    }
                }
            }
        }
    }


    onStatusChanged: {
        if (status === PageStatus.Active) {
            if (load == 0) {

                loadingRect.visible = true
                indicator.visible = true
                indicator.running = true
                getApps.getGames();
                filteredList = getApps.appInfo
                load = 1
            }

        }
    }

}
