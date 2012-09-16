import QtQuick 1.1

Slide {
    SemiboldText {
        id: text1
        x: 429
        y: 160
        color: "#ed7e15"
        text: qsTr("Luca Ottaviano")
        font.pointSize: 24
    }

    SemiboldText {
        id: text2
        x: 429
        y: 372
        color: "#3f579f"
        text: qsTr("Qt Quick")
        font.pointSize: 24
    }

    SemiboldText {
        id: text3
        x: 429
        y: 453
        width: 474
        height: 28
        color: "#3f579f"
        text: qsTr("Rapid application development in ambiente embedded")
        wrapMode: Text.WordWrap
        font.pointSize: 24
    }

    SemiboldText {
        id: text4
        x: 429
        y: 613
        color: "#646464"
        text: qsTr("Firenze - 25 Settembre 2012")
        font.pointSize: 18
    }
}
