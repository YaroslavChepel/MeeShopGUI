#include "process.h"

bool addingRepo;
bool updating;
bool updated;

Process::Process(QObject *parent) :
    QObject(parent),
    m_process(this),
    m_installationInProgress(false)
{
    connect(&m_process, SIGNAL(finished(int, QProcess::ExitStatus)), this, SLOT(processFinished(int, QProcess::ExitStatus)));
        connect(&m_process, SIGNAL(readyReadStandardOutput()), this, SLOT(readProcessOutput()));
        connect(&m_process, SIGNAL(readyReadStandardError()), this, SLOT(readProcessError()));
}

void Process::install(QString package)
{
    if (m_installationInProgress)
        return;

    m_installationInProgress = true;
    emit installationInProgressChanged(true);



        QString updateCommand = "/usr/bin/aegis-apt-get install "+package;
        m_process.start(updateCommand);;


}

void Process::update()
{
    if (m_installationInProgress)
        return;

    m_installationInProgress = true;
    emit installationInProgressChanged(true);

    if (!updated) {
            QString updateCommand = "/usr/bin/aegis-apt-get update";
            updating = true;
            m_process.start(updateCommand);
            updated = true;
} else {
        QString updateCommand = "/bin/echo lol, blank command :)";
        updating = true;
        m_process.start(updateCommand);
    }

}
void Process::feed(QString link)
{
    if (m_installationInProgress)
        return;

    m_installationInProgress = true;
    emit installationInProgressChanged(true);

    QString command = "/usr/bin/grob " + link;

    m_process.start(command);
}

void Process::remove()
{
    QString repo_dir = "/etc/apt/sources.list.d/wunderw-openrepos.list";
    QFile repo(repo_dir);
    if (repo.remove()) {
        qDebug() << "File removed successfully.";
    } else {
        qDebug() << "Failed to remove file.";
    }

    QString pref_dir = "/etc/apt/preferences.d/wunderw-openrepos.pref";
    QFile pref(pref_dir);
    if (pref.remove()) {
        qDebug() << "File removed successfully.";
    } else {
        qDebug() << "Failed to remove file.";
    }
}

bool Process::isInstallationInProgress() const
{
    return m_installationInProgress;
}

void Process::processFinished(int exitCode, QProcess::ExitStatus exitStatus)
{
    bool success = (exitStatus == QProcess::NormalExit && exitCode == 0);

    m_installationInProgress = false;
    emit installationInProgressChanged(false);
    if (updating){
        emit updateFinished(success);
        updating = false;
        }
            else {

        emit installationFinished(success);
    }
}

void Process::readProcessOutput()
{
    qDebug() << "Process output: " << m_process.readAllStandardOutput();
}

void Process::readProcessError()
{
    qDebug() << "Process error: " << m_process.readAllStandardError();
}
