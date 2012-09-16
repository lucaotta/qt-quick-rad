import QtQuick 1.1
import "DynamicObjects.js" as Script

SlideTemplate {

    SemiboldText {
        id: text2
        x: 175
        y: 81
        color: "#ed7e15"
        text: qsTr("Animazioni fluide")
        font.pointSize: 24
    }

    RegularText {
        id: regulartext3
        x: 147
        y: 190
        color: "#3f579f"
        text: "Qt Quick si integra con il framework di animazioni Qt"
        font.pointSize: 18
    }

    RegularText {
        id: regulartext1
        x: 147
        y: 240
        color: "#3f579f"
        text: "Facile creare animazioni delle proprietà degli oggetti"
        font.pointSize: 18
        opacity: 1
    }

    RegularText {
        id: regulartext2
        x: 147
        y: 290
        color: "#3f579f"
        text: "Le animazioni possono essere legate agli stati dell'oggetto"
        font.pointSize: 18
        opacity: 1
    }


    Rectangle {
        id: background
        x: 471
        y: 145
        color: "lightgray"
        anchors.rightMargin: 0
        anchors.right: parent.right
        width: 553
        height: 532
        opacity: 0

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (Script.dynObject){
                    Script.dynObject.x = mouse.x
                    Script.dynObject.y = mouse.y
                }
            }
        }
    }

    TextEdit {
        id: text_edit1
        x: 28
        y: 145
        width: 80
        height: 73
        opacity: 0
        text: "import QtQuick 1.1
Rectangle {
width: 100; height: 50
x: 200; y: 300
color: 'red'
Behavior on x {
NumberAnimation { duration: 200; easing.type: Easing.InOutQuad }
}

Behavior on y {
NumberAnimation { duration: 400; easing.type: Easing.InOutQuad }
}
}"
        font.pixelSize: 12

        Rectangle {
            id: qmlError
            color: "red"
            anchors.fill: parent
            opacity: 0
            Behavior on opacity {
                SequentialAnimation {
                    NumberAnimation { duration: 100; easing.type: Easing.Linear }
                    NumberAnimation { duration: 600; to: 0; easing.type: Easing.Linear }
                }
            }
        }
    }

    Rectangle {
        id: rectangle1
        x: 43
        y: 492
        width: 200
        height: 200
        color: "#ffffff"
        opacity: 0

        Text {
            id: text1
            x: 44
            y: 11
            text: qsTr("Run!")
            font.pixelSize: 12
        }

        MouseArea {
            id: mouse_area1
            anchors.fill: parent
            onClicked: {
                if (Script.dynObject !== null)
                    Script.dynObject.destroy()
                try {
                    Script.dynObject = Qt.createQmlObject(text_edit1.text, background)
                }
                catch (err) {
                    console.log("An error occurred: " + err.qmlErrors.lineNumber + " " + err.qmlErrors.message)
                    qmlError.opacity = 0.5
                }
            }
        }
    }

    states: [
        State {
            name: "state1"

            PropertyChanges {
                target: regulartext2
            }

            PropertyChanges {
                target: regulartext1
            }

            PropertyChanges {
                target: regulartext3
            }

            PropertyChanges {
                target: text_edit1
                width: 215
                height: 347
                opacity: 1
            }

            PropertyChanges {
                target: rectangle1
                width: 111
                height: 36
                color: "#b1b1b1"
                opacity: 1
            }

            PropertyChanges {
                target: background
                opacity: 0.800
            }
        }
    ]

    transitions: [
        Transition {
            from: ""
            to: "state1"
            NumberAnimation { targets: [regulartext1, regulartext2, regulartext3]; property: "y"; to: 3000; duration: 800; easing.type: Easing.InQuad }
            NumberAnimation { targets: [text_edit1, rectangle1, background]; property: "opacity"; duration: 1100; easing.type: Easing.Linear }
        }
    ]
}
