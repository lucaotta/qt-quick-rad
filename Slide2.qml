import QtQuick 1.1

SlideTemplate {

    SemiboldText {
        id: text2
        x: 175
        y: 81
        color: "#ed7e15"
        text: qsTr("Cosa è Qt")
        font.pointSize: 24
    }

    RegularText {
        id: regulartext1
        x: 147
        y: -30
        color: "#3f579f"
        text: "Framework cross platform per lo sviluppo di applicazioni"
        font.pointSize: 18
        Behavior on y {
            NumberAnimation { duration: 500; easing.type: Easing.InOutQuad }
        }
    }

    RegularText {
        id: regulartext2
        x: 147
        y: -30
        color: "#3f579f"
        text: "Permette di creare GUI desktop e mobile"
        font.pointSize: 18
        Behavior on y {
            NumberAnimation { duration: 500; easing.type: Easing.InOutQuad }
        }
    }

    RegularText {
        id: regulartext3
        x: 147
        y: -30
        color: "#3f579f"
        text: "Layer di portabilità tra piattaforme:"
        font.pointSize: 18
        Behavior on y {
            NumberAnimation { duration: 500; easing.type: Easing.InOutQuad }
        }
    }

    Column {
        id: column1
        x: 175
        y: -222
        spacing: 20

        RegularText {
            x: 0
            y: 0
            color: "#3f579f"
            text: "Thread e processi"
            font.pointSize: 18
        }

        RegularText {
            x: 0
            y: 50
            color: "#3f579f"
            text: "Networking"
            font.pointSize: 18
        }

        RegularText {
            x: 0
            y: 150
            color: "#3f579f"
            text: "Browser"
            font.pointSize: 18
        }

        RegularText {
            x: 0
            y: 100
            color: "#3f579f"
            text: "Multimedia"
            font.pointSize: 18
        }
        RegularText {
            x: 0
            y: 200
            color: "#3f579f"
            text: "OpenGL"
            font.pointSize: 18
        }

        Behavior on y {
            NumberAnimation { duration: 500; easing.type: Easing.InOutQuad }
        }
    }
    states: [
        State {
            name: "State1"

            PropertyChanges {
                target: regulartext1
                y: 190
            }
        },
        State {
            name: "State2"
            PropertyChanges {
                target: regulartext1
                y: 190
            }
            PropertyChanges {
                target: regulartext2
                y: 240
            }
        },
        State {
            name: "State3"
            PropertyChanges {
                target: regulartext1
                y: 190
            }
            PropertyChanges {
                target: regulartext2
                y: 240
            }
            PropertyChanges {
                target: regulartext3
                y: 290
            }
        },
        State {
            name: "State4"
            PropertyChanges {
                target: regulartext1
                y: 190
            }
            PropertyChanges {
                target: regulartext2
                y: 240
            }
            PropertyChanges {
                target: regulartext3
                y: 290
            }
            PropertyChanges {
                target: column1
                x: 175
                y: 340
            }
        }
    ]
}
