import QtQuick 1.1

SlideTemplate {

    SemiboldText {
        id: text2
        x: 175
        y: 81
        color: "#ed7e15"
        text: qsTr("Accelerazione OpenGL")
        font.pointSize: 24
    }

    RegularText {
        id: regulartext1
        x: 147
        y: 190
        width: 00
        color: "#3f579f"
        text: "Qt Quick è completamente accelerato OpenGL ES 2"
        font.pointSize: 18
        wrapMode: Text.WordWrap
    }

    RegularText {
        id: regulartext2
        x: 147
        y: 240
        color: "#3f579f"
        text: "Applicazioni complesse a 60 FPS sono possibili"
        font.pointSize: 18
    }
}
