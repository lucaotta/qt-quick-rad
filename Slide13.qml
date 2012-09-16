import QtQuick 1.1

SlideTemplate {

    function nextSlide() {
        if (state === "")
            state = "state1"
        else {
            parent.nextSlide()
        }
    }

    SemiboldText {
        id: text2
        x: 175
        y: 81
        color: "#ed7e15"
        text: qsTr("Basato su JavaScript")
        font.pointSize: 24
    }

    RegularText {
        x: 147
        y: 190
        color: "#3f579f"
        text: " Si può scrivere codice imperativo con JavaScript"
        font.pointSize: 18
    }

    RegularText {
        x: 147
        y: 240
        color: "#3f579f"
        text: " Perché JavaScript?"
        font.pointSize: 18
    }

    Column {
        id: column
        spacing: 20
        x: -540
        y: 290
        opacity: 0
        RegularText {
            color: "#3f579f"
            text: " Linguaggio standard"
            font.pointSize: 18
        }

        RegularText {
            color: "#3f579f"
            text: " C'è molto fermento attorno agli interpreti"
            font.pointSize: 18
        }

        RegularText {
            color: "#3f579f"
            text: " Le prestazioni aumentano ogni mese"
            font.pointSize: 18
        }

        RegularText {
            color: "#3f579f"
            text: " È conosciuto dai web designer"
            font.pointSize: 18
        }
    }

    states: State {
        name: "state1"
        PropertyChanges {
            target: column
            x: 197
            opacity: 1
        }
    }

    transitions: Transition {
        from: ""
        to: "state1"
        NumberAnimation { target: column; property: "x"; duration: 500; easing.type: Easing.InOutQuad }
    }
}
