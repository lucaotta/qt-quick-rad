import QtQuick 1.1

SlideTemplate {

    SemiboldText {
        id: text2
        x: 175
        y: 81
        color: "#ed7e15"
        text: qsTr("Qt Creator")
        font.pointSize: 24
    }

    RegularText {
        id: regularText1
        x: 147
        y: 190
        text: " IDE per lo sviluppo di progetti Qt/QML"
    }

    RegularText {
        id: regularText2
        x: 147
        y: 240
        text: " Integrazione con debugger (C++ e JS) e profiler"
    }

    RegularText {
        id: regularText3
        x: 147
        y: 290
        text: " Integrazione strumenti di controllo revisione"
    }

    RegularText {
        id: regularText4
        x: 147
        y: 340
        text: " Designer visuale per componenti QML"
    }
}
