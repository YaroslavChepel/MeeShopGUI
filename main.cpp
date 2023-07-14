#include <QtGui/QApplication>
#include "qmlapplicationviewer.h"
#include "process.h"
#include "getApps.h"
#include "getRss.h"
#include <QFile>
#include <QtDeclarative>



Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));
    qmlRegisterType<Process>("com.process.meeshop", 1, 0, "Process");
    qmlRegisterType<GetApps>("com.getapps.meeshop", 1, 0, "GetApps");
    qmlRegisterType<GetRss>("com.getrss.meeshop", 1, 0, "GetRss");

    QString repo_dir = "/etc/apt/sources.list.d/wunderw-openrepos.list";
    QFile repo(repo_dir);
    if (repo.open(QIODevice::WriteOnly | QIODevice::Text)) {
        QTextStream repo_text(&repo);
        repo_text << "deb http://wunderwungiel.pl/MeeGo/openrepos ./";
        repo.close();
        qDebug() << "File created successfully.";
    } else {
        qDebug() << "Failed to create file.";
    }

    QString pref_dir = "/etc/apt/preferences.d/wunderw-openrepos.pref";
    QFile pref(pref_dir);
    if (pref.open(QIODevice::WriteOnly | QIODevice::Text)) {
        QTextStream pref_text(&pref);
        pref_text << "Package: *\nPin: origin wunderw-openrepos\nPin-Priority: 1";
        pref.close();
        qDebug() << "File created successfully.";
    } else {
        qDebug() << "Failed to create file.";
    }

    QmlApplicationViewer viewer;
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
    viewer.setMainQmlFile(QLatin1String("qml/MeeShopGUI/main.qml"));
    viewer.showExpanded();

    return app->exec();
}
