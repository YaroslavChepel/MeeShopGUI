import QtQuick 1.1
import com.nokia.meego 1.0
import "Pages"
import com.process.meeshop 1.0
PageStackWindow {
    id: appWindow

    initialPage: mainPage

    Process {
        id: process
    }

    MainPage {
        id: mainPage
    }
    Allapps {
        id: allApps
    }
    Games {
        id: games
    }
    LIBs {
        id: libs
    }
    RssCountry {
        id: countryfeeds
    }
    RssList {
        id: feedList
    }
    RssInjection {
        id: rssInj
    }

    Tools {
        id: tools
    }

    AppDownload {
        id: appdown
    }
    AboutDialog {
        id: aboutDialog
    }
    CategoryDialog {
        id: catDialog
    }

    Component.onDestruction: {
        process.remove();

            // Выполните здесь свои действия перед закрытием приложения
        }





}
