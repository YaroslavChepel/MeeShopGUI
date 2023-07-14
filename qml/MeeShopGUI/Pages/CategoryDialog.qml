import QtQuick 1.1
import com.nokia.meego 1.1
SelectionDialog {
    id: dialog
    property int currentPage: 1
    titleText: "Select a category:"
    selectedIndex: 1



    model:
        ListModel {
        ListElement {name: "Apps"; index: 1}
        ListElement {name: "Games"; index: 2}
        ListElement {name: "Tools"; index: 3}
        ListElement {name: "RSS Feeds"; index: 4}
        ListElement {name: "LIBs"; index: 5}
    }
    onAccepted: {

        if (selectedIndex == 1){
            pageStack.push(allApps)
            currentPage = 1
        }else if (selectedIndex == 2){
            pageStack.push(games)
            currentPage = 2
        }
        else if (selectedIndex == 3){
            pageStack.push(tools)
            currentPage = 3
        }
        else if (selectedIndex == 4){
            pageStack.push(countryfeeds)
            currentPage = 4
        }
        else if (selectedIndex == 5){
            pageStack.push(libs)
            currentPage = 5
        }
    }
}
