import QtQuick 1.1

SlideTemplate {

    SemiboldText {
        id: text2
        x: 175
        y: 81
        color: "#ed7e15"
        text: qsTr("Scoprite Qt Quick!")
        font.pointSize: 24
    }

    RegularText {
        id: regulartext1
        x: 147
        y: 190
        width: 00
        color: "#3f579f"
        text: "Insieme di tecnologie per creare interfacce dinamiche
    con transizioni fluide ed effetti grafici"
        font.pointSize: 18
        wrapMode: Text.WordWrap
    }

    RegularText {
        id: regulartext2
        x: 147
        y: 270
        color: "#3f579f"
        text: "Comprende:"
        font.pointSize: 18
    }

    Column {
        id: column1
        x: 175
        y: 320
        spacing: 20

        RegularText {
            color: "#3f579f"
            text: "QML: linguaggio dichiarativo simile a CSS + JavaScript"
            font.pointSize: 18
        }

        RegularText {
            color: "#3f579f"
            text: "Elementi base per la creazione di interfacce"
            font.pointSize: 18
        }

        RegularText {
            color: "#3f579f"
            text: "Un runtime per l'accesso a codice C++"
            font.pointSize: 18
        }

        RegularText {
            color: "#3f579f"
            text: "Un potente IDE cross platform (Qt Creator)"
            font.pointSize: 18
        }
    }
}
