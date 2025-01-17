#ifndef AUDIOCONTROLLER_H
#define AUDIOCONTROLLER_H

#include <QObject>

class AudioController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int volumeLevel READ volumeLevel WRITE setVolumeLevel NOTIFY volumeLevelChanged)

public:
    explicit AudioController(QObject *parent = 0);

    int volumeLevel() const;

    Q_INVOKABLE void incrementVolume( const int & val );
signals:

    void volumeLevelChanged(int volumeLevel);

private:

int m_volumeLevel;

public slots:

void setVolumeLevel(int volumeLevel);
};

#endif // AUDIOCONTROLLER_H
