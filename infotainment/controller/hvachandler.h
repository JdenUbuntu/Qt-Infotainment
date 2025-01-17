#ifndef HVACHANDLER_H
#define HVACHANDLER_H

#include <QObject>

class HVACHandler : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int targetTemperature READ targetTemperature WRITE setTargetTemperature NOTIFY targetTemperatureChanged)


private:

    int m_targetTemperature;

public:
    explicit HVACHandler(QObject *parent = 0);

int targetTemperature() const;
Q_INVOKABLE void incrementTargetTemperature( const int & val );


signals:

void targetTemperatureChanged(int targetTemperature);

public slots:
void setTargetTemperature(int targetTemperature);
};

#endif // HVACHANDLER_H
