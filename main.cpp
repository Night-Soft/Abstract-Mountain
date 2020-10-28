#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QIcon>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    app.setWindowIcon(QIcon(":/img/icon.svg"));


    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/SlideColors.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
