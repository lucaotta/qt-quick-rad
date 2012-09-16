import QtQuick 1.1

SlideTemplate {

    SemiboldText {
        id: text2
        x: 175
        y: 81
        color: "#ed7e15"
        text: qsTr("Linguaggio QML")
        font.pointSize: 24
    }

    RegularText {
        id: regulartext1
        x: 147
        y: 190
        width: 00
        color: "#3f579f"
        text: " Linguaggio molto simile a CSS e JavaScript"
        font.pointSize: 18
        wrapMode: Text.WordWrap
    }

    RegularText {
        id: regulartext2
        x: 147
        y: 240
        color: "#3f579f"
        text: " È un data definition language"
        font.pointSize: 18
    }

    RegularText {
        x: 147
        y: 290
        color: "#3f579f"
        text: " È dichiarativo, non bisogna saper programmare per usarlo"
        font.pointSize: 18
    }

    RegularText {
        x: 147
        y: 340
        color: "#3f579f"
        text: " Usa i concetti base di Qt: signal/slot, meta object etc."
        font.pointSize: 18
    }

    RegularText {
        x: 147
        y: 390
        color: "#3f579f"
        text: " È comprensibile dai designer con esperienza HTML"
        font.pointSize: 18
    }
}
