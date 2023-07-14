#include "getApps.h"
#include <QCoreApplication>
#include <QXmlStreamReader>
#include <QDebug>
#include <QStringList>
#include <algorithm>
bool dispIcon;
bool rss;


GetApps::GetApps(QObject *parent) : QObject(parent)
{
    manager = new QNetworkAccessManager(this);
    reply = NULL;
}

void GetApps::getApps()
{
    QNetworkRequest request(QUrl("http://wunderwungiel.pl/MeeGo/openrepos/catalog_new.xml"));
    reply = manager->get(request);
    dispIcon = true;

    connect(reply, SIGNAL(finished()), this, SLOT(replyFinished()));
}
void GetApps::getGames()
{
    QNetworkRequest request(QUrl("http://wunderwungiel.pl/MeeGo/openrepos/games.xml"));
    reply = manager->get(request);
    dispIcon = true;

    connect(reply, SIGNAL(finished()), this, SLOT(replyFinished()));
}
void GetApps::getTools()
{
    QNetworkRequest request(QUrl("http://wunderwungiel.pl/MeeGo/openrepos/catalog.xml"));
    reply = manager->get(request);
    dispIcon = true;

    connect(reply, SIGNAL(finished()), this, SLOT(replyFinished()));
}
void GetApps::getLibs()
{
    QNetworkRequest request(QUrl("http://wunderwungiel.pl/MeeGo/openrepos/libs.xml"));
    reply = manager->get(request);
    dispIcon = false;

    connect(reply, SIGNAL(finished()), this, SLOT(replyFinished()));
}


void GetApps::replyFinished()
{
    if (reply->error() == QNetworkReply::NoError)
    {
        QByteArray data = reply->readAll();
        processXmlData(data);
    }
    else
    {
        qDebug() << "Error downloading XML: " << reply->errorString();
    }

    reply->deleteLater();
    reply = NULL;

    emit dataProcessed();
}

void GetApps::processXmlData(const QByteArray &xmlData)
{
    QStringList appInfoList;  // Используем QStringList

    QXmlStreamReader xml(xmlData);

    while (!xml.atEnd() && !xml.hasError())
    {

            if (xml.isStartElement() && xml.name() == "app")
        {
            while (!(xml.isEndElement() && xml.name() == "app"))
            {
                xml.readNext();

                if (xml.isStartElement() && xml.name() == "data")
                {
                    if (!dispIcon){
                        QString name = xml.attributes().value("name").toString();
                        QString size = xml.attributes().value("size").toString();
                        QString ver = xml.attributes().value("ver").toString();
                        QString package = xml.attributes().value("package").toString();
                        QString app = name + "," + size + "," + ver + "," + package;
                        appInfoList.append(app);
                    }
                    else {
                        QString name = xml.attributes().value("name").toString();
                        QString size = xml.attributes().value("size").toString();
                        QString ver = xml.attributes().value("ver").toString();
                        QString icon = xml.attributes().value("icon").toString();
                        QString package = xml.attributes().value("package").toString();
                        QString app = name + "," + size + "," + ver + "," + icon + "," + package;
                        appInfoList.append(app);
                    }
                }
            }
        }


        xml.readNext();
    }

    if (xml.hasError())
    {
        qDebug() << "Error parsing XML: " << xml.errorString();
    }
    else {
        std::sort(appInfoList.begin(), appInfoList.end());
        m_appInfo = appInfoList;  // Присваиваем список m_appInfo
        emit appInfoChanged();
        emit processFinished();
        // Излучаем сигнал об изменении свойства
    }

}

QStringList GetApps::appInfoList() const
{
    return m_appInfo;  // Возвращаем список m_appInfo
}









