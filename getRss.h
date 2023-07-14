#ifndef GETRSS_H
#define GETRSS_H

#include <QObject>
#include <QtNetwork/QNetworkAccessManager>
#include <QtNetwork/QNetworkReply>
#include <QStringList>


class GetRss : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QStringList appInfo READ appInfoList NOTIFY appInfoChanged)

public:
    explicit GetRss(QObject *parent = NULL);
    Q_INVOKABLE void getRss(QString countries);

    QStringList appInfoList() const;

signals:
    void dataProcessed();
    void appInfoChanged();
    void processFinished();


private slots:
    void replyFinished();
    void processXmlData(const QByteArray &xmlData);

private:
    QNetworkAccessManager *manager;
    QNetworkReply *reply;
    QStringList m_appInfo;
};

#endif // GETAPPS_H



