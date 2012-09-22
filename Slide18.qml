import QtQuick 1.1

SlideTemplate {

    SemiboldText {
        id: text2
        x: 175
        y: 81
        color: "#ed7e15"
        text: qsTr("Estendibile in C++")
        font.pointSize: 24
    }

    RegularText {
        id: regularText1
        x: 147
        y: 190
        text: " Tutte le funzionalità di Qt possono essere esposte al QML"
    }

    RegularText {
        id: regularText2
        x: 147
        y: 240
        text: " Le parti critiche per le performance si possono scrivere in C++"
    }

    RegularText {
        id: regularText3
        x: 147
        y: 290
        text: " Non si è limitati al linguaggio QML"
    }

    RegularText {
        id: regularText4
        x: 147
        y: 340
        text: " Consente l'accesso alle API di sistema"
    }
}
