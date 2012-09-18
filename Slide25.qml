import QtQuick 1.1

SlideTemplate {

    SemiboldText {
        id: text2
        x: 175
        y: 81
        color: "#ed7e15"
        text: qsTr("Qt Quick 2.0 (2)")
        font.pointSize: 24
    }

    RegularText {
        id: regularText1
        x: 147
        y: 190
        text: " Qt 3D: framework per il rendering 3D da QML"
    }

    RegularText {
        x: 147
        y: 240
        text: " Elementi shader: possibile usarli direttamente da QML"
    }

    RegularText {
        x: 147
        y: 290
        text: " Elementi per il multimedia: audio, video, sensori, posizionamento..."
    }

    RegularText {
        id: regularText2
        x: 147
        y: 850
        text: " Effetti particellari"
    }
}
