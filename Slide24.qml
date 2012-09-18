import QtQuick 1.1

SlideTemplate {

    SemiboldText {
        id: text2
        x: 175
        y: 81
        color: "#ed7e15"
        text: qsTr("Qt Quick 2.0")
        font.pointSize: 24
    }

    RegularText {
        id: regularText1
        x: 147
        y: 190
        text: " Disponibile in Qt 5"
    }

    RegularText {
        x: 147
        y: 240
        text: " Integrazione del motore V8 di Google Chrome per JavaScript"
    }

    RegularText {
        x: 147
        y: 290
        text: " Elemento Canvas per disegnare direttamente da QML"
    }

    RegularText {
        id: regularText2
        x: 147
        y: 850
        text: " Aumenti di performance grazie a miglioramenti architetturali"
    }

    Image {
        id: image1
        x: 128
        y: 900
        width: 824
        height: 212
        fillMode: Image.PreserveAspectFit
        source: "images/numbers.png"
        smooth: true
    }

    states: State {
        name: "state1"
        PropertyChanges { target: regularText2; y: 340 }
        PropertyChanges { target: image1; x: 128; y: 440 }
    }

    transitions: Transition {
        from: ""
        to: "state1"
        NumberAnimation { target: regularText2; property: "y"; duration: 700; easing.type: Easing.Linear }
        NumberAnimation { target: image1; property: "y"; duration: 1500; easing.type: Easing.Linear }
    }
}
