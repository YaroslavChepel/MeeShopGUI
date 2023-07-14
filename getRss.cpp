#include "getRss.h"
#include <QCoreApplication>
#include <QXmlStreamReader>
#include <QDebug>
#include <QStringList>
#include <algorithm>
bool onlyCountry;
GetRss::GetRss(QObject *parent) : QObject(parent)
{
    manager = new QNetworkAccessManager(this);
    reply = NULL;
}
void GetRss::getRss(QString countries)
{
    if (countries == "countries.xml"){
        QNetworkRequest request(QUrl("http://wunderwungiel.pl/MeeGo/.database/.rss/" + countries));
        onlyCountry = false;
        reply = manager->get(request);
    } else{
        QNetworkRequest request(QUrl("http://wunderwungiel.pl/MeeGo/.database/.rss/" + countries));
        onlyCountry = true;
        reply = manager->get(request);
    }


    connect(reply, SIGNAL(finished()), this, SLOT(replyFinished()));
}

void GetRss::replyFinished()
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

void GetRss::processXmlData(const QByteArray &xmlData)
{
    QStringList appInfoList;  // Используем QStringList

    QXmlStreamReader xml(xmlData);
    while (!xml.hasError() && !xml.atEnd())
    {
        if (xml.isStartElement())
        {
            if (xml.name() == "country")
            {
                if (!onlyCountry)
                {
                    QString name = xml.attributes().value("name").toString();
                    QString file = xml.attributes().value("file").toString();
                    QString app = name + "," + file;
                    appInfoList.append(app);
                }
            }
            else if (xml.name() == "rss")
            {
                if (onlyCountry)
                {
                    QString name = xml.attributes().value("name").toString();
                    QString url = xml.attributes().value("url").toString();
                    QString app = name + "," + url;
                    appInfoList.append(app);
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
        m_appInfo = appInfoList;// Присваиваем список m_appInfo
        emit appInfoChanged();
        emit processFinished();
        // Излучаем сигнал об изменении свойства
    }

}

QStringList GetRss::appInfoList() const
{
    return m_appInfo;  // Возвращаем список m_appInfo
}










