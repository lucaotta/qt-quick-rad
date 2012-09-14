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
        text: qsTr("Molte applicazioni desktop sono scritte in Qt...")
        font.pointSize: 24
    }

    Image {
        id: image1
        x: 1048
        y: 62
        width: 358
        height: 221
        fillMode: Image.PreserveAspectFit
        source: "images/aria_screenshot2.gif"
    }

    Image {
        id: image2
        x: 1190
        y: -33
        width: 351
        height: 268
        fillMode: Image.PreserveAspectFit
        source: "images/googleearth_screenshot.jpg"
    }

    Image {
        id: image4
        x: 1048
        y: 198
        width: 460
        height: 271
        fillMode: Image.PreserveAspectFit
        source: "images/maxwellrender_1.jpg"
    }

    Image {
        id: image3
        x: 1048
        y: 408
        width: 428
        height: 319
        fillMode: Image.PreserveAspectFit
        source: "images/mathematica_screenshot.jpg"
    }

    Image {
        id: image5
        x: 1247
        y: 615
        width: 381
        height: 283
        fillMode: Image.PreserveAspectFit
        source: "images/real_flow.jpg"
    }

    states: [
        State {
            name: "state1"
            PropertyChanges {
                target: image1
                x: 18
                y: 137
            }
            PropertyChanges {
                target: image2
                x: 625
                y: 137

            }
            PropertyChanges {
                target: image3
                x: 18
                y: 364

            }
            PropertyChanges {
                target: image4
                x: 260
                y: 255

            }
            PropertyChanges {
                target: image5
                x: 625
                y: 400
            }
        }
    ]

    transitions: [
        Transition {
            from: ""
            to: "state1"
            NumberAnimation { target: image1; properties: "x,y"; duration: 400; easing.type: Easing.InOutQuad }
            NumberAnimation { target: image2; properties: "x,y"; duration: 500; easing.type: Easing.InOutQuad }
            NumberAnimation { target: image3; properties: "x,y"; duration: 600; easing.type: Easing.InOutQuad }
            NumberAnimation { target: image4; properties: "x,y"; duration: 700; easing.type: Easing.InOutQuad }
            NumberAnimation { target: image5; properties: "x,y"; duration: 800; easing.type: Easing.InOutQuad }
        }
    ]
}
