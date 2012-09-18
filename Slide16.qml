import QtQuick 1.1

SlideTemplate {

    SemiboldText {
        id: text2
        x: 175
        y: 81
        color: "#ed7e15"
        text: qsTr("Svantaggi di QML")
        font.pointSize: 24
    }

    RegularText {
        id: regularText1
        x: 1024
        y: 190
        color: "#3f579f"
        text: " Non c'è l'equivalente di QLayout"
        font.pointSize: 18
    }

    RegularText {
        id: regularText2
        x: 1024
        y: 240
        color: "#3f579f"
        text: " Il layout va fatto a mano"
        font.pointSize: 18
    }

    RegularText {
        id: regularText3
        x: 1024
        y: 290
        color: "#3f579f"
        text: " Dinamico, i typo non si vedono finché non si testa il codice"
        font.pointSize: 18
    }

    RegularText {
        id: regularText4
        x: 1024
        y: 340
        color: "#3f579f"
        text: " Linguaggio weakly typed (come JavaScript)"
        font.pointSize: 18
    }

    RegularText {
        id: regularText5
        x: 1024
        y: 390
        color: "#3f579f"
        text: " Serve un buon designer per creare interfacce consistenti"
        font.pointSize: 18
    }


    RegularText {
        id: regularText6
        x: 1024
        y: 440
        color: "#3f579f"
        text: " Richiede accelerazione hardware"
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
            PropertyChanges { target: regularText2; x: 197 }
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
        },
        State {
            name: "state5"
            extend: "state4"
            PropertyChanges { target: regularText5; x: 147 }
        },
        State {
            name: "state6"
            extend: "state5"
            PropertyChanges { target: regularText6; x: 147 }
        }
    ]

    transitions: Transition {
        from: "*"
        to: "*"
        NumberAnimation {
            targets: [regularText1, regularText2, regularText3, regularText4, regularText5, regularText6];
            property: "x";
            duration: 600;
            easing.type: Easing.Linear
        }
    }
}
