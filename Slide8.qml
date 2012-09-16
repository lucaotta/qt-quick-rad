import QtQuick 1.1

SlideTemplate {

    SemiboldText {
        id: text2
        x: 175
        y: 81
        color: "#ed7e15"
        text: qsTr("Qt Quick!")
        font.pointSize: 24
    }

    RegularText {
        id: regulartext1
        x: 147
        y: 190
        width: 00
        color: "#3f579f"
        text: "Consente ai programmatori e ai grafici di lavorare insieme"
        font.pointSize: 18
        wrapMode: Text.WordWrap
    }

    RegularText {
        id: regulartext2
        x: 147
        y: 240
        color: "#3f579f"
        text: "Linguaggio comune comprensibile ad entrambi"
        font.pointSize: 18
    }

    RegularText {
        x: 147
        y: 290
        color: "#3f579f"
        text: "Ottimizzato per interfacce touch"
        font.pointSize: 18
    }

    RegularText {
        x: 147
        y: 340
        color: "#3f579f"
        text: "Applicazioni leggere"
        font.pointSize: 18
    }
}
