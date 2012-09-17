import QtQuick 1.1

SlideTemplate {

    SemiboldText {
        id: text2
        x: 175
        y: 81
        color: "#ed7e15"
        text: qsTr("Performance")
        font.pointSize: 24
    }

    RegularText {
        id: regularText1
        x: 147
        y: 900
        text: " Backend in C++, velocità nativa"
    }

    RegularText {
        id: regularText2
        x: 147
        y: 900
        text: " Interfaccia in scritta in QML e JavaScript finché è sufficiente"
    }

    RegularText {
        id: regularText3
        x: 147
        y: 900
        text: " Le animazioni sono eseguite a piena velocità in C++ e OpenGL"
    }

    RegularText {
        id: regularText4
        x: 147
        y: 900
        text: " Spesso le performance sono migliori che con QWidget"
    }

    RegularText {
        id: regularText5
        x: 147
        y: 900
        text: " In Qt5:"
    }

    Image {
        id: image1
        x: 128
        y: 900
        width: 824
        height: 212
        fillMode: Image.PreserveAspectFit
        source: "images/numbers.png"
        smooth: true
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
        },
        State {
            name: "state4"
            extend: "state3"
            PropertyChanges { target: regularText4; y: 340 }
        },
        State {
            name: "state5"
            extend: "state4"
            PropertyChanges { target: regularText5; y: 390 }
            PropertyChanges { target: image1; y: 468 }
        }
    ]

    transitions: Transition {
        from: "*"
        to: "*"
        NumberAnimation {
            targets: [regularText1, regularText2, regularText3, regularText4, regularText5, image1];
            property: "y";
            duration: 600;
            easing.type: Easing.InOutSine
        }
    }
}
