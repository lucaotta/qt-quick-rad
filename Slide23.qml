import QtQuick 1.1

SlideTemplate {

    SemiboldText {
        id: text2
        x: 175
        y: 81
        color: "#ed7e15"
        text: qsTr("Qt Quick desktop components")
        font.pointSize: 24
    }

    RegularText {
        id: regularText1
        x: 147
        y: 190
        text: " Insieme di componenti che implementano i widget desktop in QML"
    }

    RegularText {
        x: 147
        y: 240
        text: " Hanno il look and feel della piattaforma"
    }

    RegularText {
        x: 147
        y: 290
        text: " Implementano pulsanti, scroll area, spin box, tab etc."
    }

    Image {
        id: image1
        x: 50
        y: -333
        width: 456
        height: 329
        smooth: true
        fillMode: Image.PreserveAspectFit
        source: "images/DesktopComponentsMac1.png"
    }

    Image {
        id: image2
        x: 543
        y: -333
        width: 456
        height: 329
        smooth: true
        fillMode: Image.PreserveAspectFit
        source: "images/DesktopComponentsWin.png"
    }

    states: State {
        name: "state1"
        PropertyChanges { target: image1; y: 336 }
        PropertyChanges { target: image2; y: 336 }
    }

    transitions: Transition {
        from: ""
        to: "state1"
        NumberAnimation { target: image1; property: "y"; duration: 1200; easing.type: Easing.OutBounce; easing.amplitude: 0.4 }
        NumberAnimation { target: image2; property: "y"; duration: 800; easing.type: Easing.OutBounce; easing.amplitude: 0.9 }
    }
}
