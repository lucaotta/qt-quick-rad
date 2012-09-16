import QtQuick 1.1

SlideTemplate {

    function nextSlide() {
        if (state === "")
            state = "testo1"
        else if (state === "testo1")
            state = "testo2"
        else if (state === "testo2")
            state = "testo3"
        else if (state === "testo3")
            state = "testo4"
        else
            parent.nextSlide()
    }

    SemiboldText {
        id: text2
        x: 175
        y: 81
        color: "#ed7e15"
        text: qsTr("Limitazioni di Qt")
        font.pointSize: 24
    }

    RegularText {
        x: 147
        y: 190
        color: "#3f579f"
        text: "Quanto codice serve per...?"
        font.pointSize: 18
    }

    RegularText {
        id: regulartext1
        x: 197
        y: 240
        color: "#3f579f"
        text: "Cambiare lo stile di default"
        font.pointSize: 18
        opacity: 0
    }

    RegularText {
        id: regulartext2
        x: 197
        y: 0
        color: "#3f579f"
        text: "Cambiare il layout dinamicamente"
        font.pointSize: 18
        opacity: 0
    }

    RegularText {
        id: regulartext3
        x: 197
        y: 340
        color: "#3f579f"
        text: "Avere transizioni fluide tra pagine"
        font.pointSize: 18
        opacity: 0
    }

    RegularText {
        id: regulartext4
        x: 1025
        y: 40
        color: "#3f579f"
        text: "Animare gli elementi della GUI"
        visible: true
        font.pointSize: 18
        opacity: 0
    }
    states: [
        State {
            name: "testo1"

            PropertyChanges {
                target: regulartext1
                opacity: 1
            }
        },
        State {
            name: "testo2"
            PropertyChanges {
                target: regulartext1
                opacity: "1"
            }

            PropertyChanges {
                target: regulartext2
                opacity: 1
                y: 290
            }
        },
        State {
            name: "testo3"
            PropertyChanges {
                target: regulartext1
                opacity: "1"
            }

            PropertyChanges {
                target: regulartext2
                y: "290"
                opacity: 1
            }

            PropertyChanges {
                target: regulartext3
                opacity: 1
                rotation: 360
            }
        },
        State {
            name: "testo4"
            PropertyChanges {
                target: regulartext1
                opacity: "1"
            }

            PropertyChanges {
                target: regulartext2
                y: "290"
                opacity: 1
            }

            PropertyChanges {
                target: regulartext3
                rotation: "360"
                opacity: 1
            }

            PropertyChanges {
                target: regulartext4
                opacity: 1
                y: 390
                x: 197
            }
        }
    ]

    transitions: [
        Transition {
            from: ""
            to: "testo1"
            NumberAnimation { target: regulartext1; property: "opacity"; duration: 500; easing.type: Easing.InOutQuad }
        },
        Transition {
            from: "testo1"
            to: "testo2"
            NumberAnimation { target: regulartext2; property: "y"; duration: 400; easing.type: Easing.InOutQuad }
        },
        Transition {
            from: "testo2"
            to: "testo3"
            NumberAnimation { target: regulartext3; property: "opacity"; duration: 400; easing.type: Easing.InOutQuad }
            RotationAnimation { target: regulartext3; from: 0; duration: 1000; easing.type: Easing.OutElastic }
        },
        Transition {
            from: "testo3"
            to: "testo4"
            NumberAnimation { target: regulartext4; properties: "x,y"; duration: 800; easing.type: Easing.OutBack }
        }
    ]

}
