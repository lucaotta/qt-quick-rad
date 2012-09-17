import QtQuick 1.1

SlideTemplate {

    SemiboldText {
        id: text2
        x: 175
        y: 81
        color: "#ed7e15"
        text: qsTr("Vantaggi di QML (2)")
        font.pointSize: 24
    }

    RegularText {
        id: regularText1
        x: 147
        y: 900
        color: "#3f579f"
        text: " Facile da scrivere, riscrivere il codice non è un problema"
        font.pointSize: 18
    }

    RegularText {
        id: regularText2
        x: 147
        y: 900
        color: "#3f579f"
        text: " Veloce per i prototipi"
        font.pointSize: 18
    }

    RegularText {
        id: regularText3
        x: 147
        y: 900
        color: "#3f579f"
        text: " La sintassi è fatta per essere scritta a mano rapidamente"
        font.pointSize: 18
    }

    RegularText {
        id: regularText4
        x: 197
        y: 900
        color: "#3f579f"
        text: " Meglio di codice C++ scritto a mano"
        font.pointSize: 18
    }

    RegularText {
        id: regularText5
        x: 197
        y: 900
        color: "#3f579f"
        text: " Meglio dei file .ui del Designer (basati su XML)"
        font.pointSize: 18
    }

    states: [
        State {
            name: "state1"
            PropertyChanges { target: regularText1; y: 190 }
        },
        State {
            name: "state2"
            extend: "state1"
            PropertyChanges { target: regularText2; y: 240 }
        },
        State {
            name: "state3"
            extend: "state2"
            PropertyChanges { target: regularText3; y: 290 }
            PropertyChanges { target: regularText4; y: 340 }
            PropertyChanges { target: regularText5; y: 390 }
        }
    ]

    transitions: Transition {
        from: "*"
        to: "*"
        NumberAnimation {
            targets: [regularText1, regularText2, regularText3, regularText4, regularText5];
            property: "y";
            duration: 600;
            easing.type: Easing.OutBack
        }
    }
}
