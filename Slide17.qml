import QtQuick 1.1

SlideTemplate {

    SemiboldText {
        id: text2
        x: 175
        y: 81
        color: "#ed7e15"
        text: qsTr("Sfrutta lo State Machine Framework")
        font.pointSize: 24
    }

    Column {
        id: column
        x: -570
        y: -188
        spacing: 20


        RegularText {
            text: " Ogni Item può avere più stati grafici"
        }

        RegularText {
            text: " Ogni stato può cambiare le proprietà dell'oggetto"
        }

        RegularText {
            anchors.left: parent.left
            anchors.leftMargin: 50
            text: "width, height, opacity, position"
        }

        RegularText {
            text: " Le transizioni fra stati possono essere animate"
        }
    }

    Column {
        id: column2
        x: 1056
        y: 780
        spacing: 20

        RegularText {
            text: " Posso entrare in uno stato:"
        }

        RegularText {
            anchors.left: parent.left
            anchors.leftMargin: 50
            text: "in modo imperativo, impostando lo stato"
        }

        RegularText {
            anchors.left: parent.left
            anchors.leftMargin: 50
            text: "in modo dichiarativo, quando scatta una condizione"
        }
    }

    RegularText {
        id: code
        x: 55
        y: 118
        width: 914
        height: 550
        opacity: 0
        font.pointSize: 16
        wrapMode: Text.Wrap
        text:
'    states: [
        ...
        State {
            name: "state3"
            extend: "state2"
            PropertyChanges { target: column; y: 2000 }
            PropertyChanges { target: column2; y: 2000 }
            PropertyChanges { target: code; opacity: 1}
        }
    ]

    transitions: [
        ...
        Transition {
            from: "state2"
            to: "state3"
            NumberAnimation { targets: [column, column2]; property: "y"; duration: 600; }
            NumberAnimation { target: code; property: "opacity"; duration: 800; }
        }
    ]'
    }

    states: [
        State {
            name: "state1"
            PropertyChanges { target: column; x: 147; y: 190 }
        },
        State {
            name: "state2"
            extend: "state1"
            PropertyChanges { target: column2; x: 147; y: 390 }
        },
        State {
            name: "state3"
            extend: "state2"
            PropertyChanges { target: column; y: 2000 }
            PropertyChanges { target: column2; y: 2000 }
            PropertyChanges { target: code; opacity: 1}
        }
    ]

    transitions: [
        Transition {
            from: ""
            to: "state1"
            NumberAnimation {
                targets: column
                properties: "x, y";
                duration: 600;
                easing.type: Easing.OutBack
            }
        },
        Transition {
            from: "state1"
            to: "state2"
            NumberAnimation { target: column2; properties: "x,y"; duration: 600; easing.type: Easing.InOutQuad }
        },
        Transition {
            from: "state2"
            to: "state3"
            NumberAnimation { targets: [column, column2]; property: "y"; duration: 600; easing.type: Easing.InOutCubic }
            NumberAnimation { target: code; property: "opacity"; duration: 800; easing.type: Easing.Linear }
        }
    ]
}
