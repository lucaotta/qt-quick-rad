import QtQuick 1.1

SlideTemplate {

    SemiboldText {
        id: text2
        x: 19
        y: 113
        width: 488
        height: 38
        color: "#ed7e15"
        text: qsTr("Ma il bene non dura mai...")
        font.pointSize: 24
        wrapMode: Text.WordWrap
    }
    SemiboldText {
        id: text3
        x: 19
        y: 770
        width: 488
        height: 38
        color: "#ed7e15"
        text: qsTr("ecco a voi il designer!")
        font.pointSize: 24
        wrapMode: Text.WordWrap
    }

    Image {
        id: image1
        x: 524
        y: 770
        width: 500
        height: 649
        fillMode: Image.PreserveAspectFit
        source: "images/designer.jpg"
    }

    RegularText {
        id: text1
        x: 148
        y: 820
        text: qsTr("Flickr: jeffhurlow")
        font.pixelSize: 18
    }

    states: [
        State {
            name: "state1"

            PropertyChanges {
                target: image1
                x: 518
                y: 34
                width: 500
                height: 649
            }

            PropertyChanges {
                target: text1
                x: 19
                y: 661
                opacity: 1
            }

            PropertyChanges {
                target: text3
                x: 19
                y: 151
            }
        }
    ]

    transitions: [
        Transition {
            from: ""
            to: "state1"
            NumberAnimation { target: image1; property: "y"; duration: 1000; easing.type: Easing.Linear }
            NumberAnimation { target: text3 ; property: "y"; duration: 1000; easing.type: Easing.Linear }
        }
    ]
}
