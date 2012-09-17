import QtQuick 1.1

SlideTemplate {

    SemiboldText {
        id: text2
        x: 175
        y: 81
        color: "#ed7e15"
        text: qsTr("Vantaggi di QML")
        font.pointSize: 24
    }

    RegularText {
        id: regularText1
        x: 1024
        y: 190
        color: "#3f579f"
        text: " È codice, si integra bene con i sistemi di controllo versione"
        font.pointSize: 18
    }

    RegularText {
        id: regularText2
        x: 1024
        y: 240
        color: "#3f579f"
        text: " Rende i designer più produttivi"
        font.pointSize: 18
    }

    RegularText {
        id: regularText3
        x: 1024
        y: 290
        color: "#3f579f"
        text: " Facile da imparare per un programmatore C++"
        font.pointSize: 18
    }

    RegularText {
        id: regularText4
        x: 1024
        y: 340
        color: "#3f579f"
        text: " Spinge ad usare il model/view pattern"
        font.pointSize: 18
    }

    states: [
        State {
            name: "state1"
            PropertyChanges { target: regularText1; x: 147 }
        },
        State {
            name: "state2"
            extend: "state1"
            PropertyChanges { target: regularText2; x: 147 }
        },
        State {
            name: "state3"
            extend: "state2"
            PropertyChanges { target: regularText3; x: 147 }
        },
        State {
            name: "state4"
            extend: "state3"
            PropertyChanges { target: regularText4; x: 147 }
        }
    ]

    transitions: Transition {
        from: "*"
        to: "*"
        NumberAnimation {
            targets: [regularText1, regularText2, regularText3, regularText4];
            property: "x";
            duration: 1000;
            easing.type: Easing.OutBounce
            easing.amplitude: 0.3
        }
    }
}
