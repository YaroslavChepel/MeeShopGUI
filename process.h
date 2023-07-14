#ifndef PROCESS_H
#define PROCESS_H

#include <QObject>
#include <QProcess>
#include <QFile>
#include <QTextStream>
#include <QDebug>

class Process : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool installationInProgress READ isInstallationInProgress NOTIFY installationInProgressChanged)

public:
    Process(QObject* parent = 0);

    Q_INVOKABLE void update();
    Q_INVOKABLE void install(QString package);
    Q_INVOKABLE void feed(QString link);
    Q_INVOKABLE void remove();

    bool isInstallationInProgress() const;

signals:
    void installationInProgressChanged(bool inProgress);
    void installationFinished(bool success);
    void updateFinished(bool success);

private slots:
    void readProcessOutput();
    void readProcessError();
    void processFinished(int exitCode, QProcess::ExitStatus exitStatus);

private:
    QProcess m_process;
    bool m_installationInProgress;
    QString m_packageToInstall;
};

#endif // PROCESS_H
