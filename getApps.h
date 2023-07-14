#ifndef GETAPPS_H
#define GETAPPS_H

#include <QObject>
#include <QtNetwork/QNetworkAccessManager>
#include <QtNetwork/QNetworkReply>
#include <QStringList>


class GetApps : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QStringList appInfo READ appInfoList NOTIFY appInfoChanged)

public:
    explicit GetApps(QObject *parent = NULL);
    Q_INVOKABLE void getApps();
    Q_INVOKABLE void getLibs();
    Q_INVOKABLE void getGames();
    Q_INVOKABLE void getTools();

    QStringList appInfoList() const;// Изменено возвращаемое значение на QStringList

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

