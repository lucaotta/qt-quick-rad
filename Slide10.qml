import QtQuick 1.1

SlideTemplate {

    SemiboldText {
        id: text2
        x: 175
        y: 81
        color: "#ed7e15"
        text: qsTr("Rapid prototyping")
        font.pointSize: 24
    }

    RegularText {
        id: regulartext1
        x: 147
        y: 190
        width: 00
        color: "#3f579f"
        text: "Facile creare applicazioni dinamiche"
        font.pointSize: 18
        wrapMode: Text.WordWrap
    }

    RegularText {
        id: regulartext2
        x: 147
        y: 240
        color: "#3f579f"
        text: "Ideale per fare rapide iterazioni con il team di design"
        font.pointSize: 18
    }

    RegularText {
        x: 147
        y: 290
        color: "#3f579f"
        text: "Creare demo dell'applicazione in poco tempo"
        font.pointSize: 18
    }
}
