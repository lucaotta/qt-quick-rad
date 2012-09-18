import QtQuick 1.1
import "Stack.js" as Container

BaseSlide {
    id: slideTemplate

    property int slideNumber

    Rectangle {
        id: rectangle1
        x: 0
        y: 690
        width: 1024
        height: 78
        color: "#a2a2a2"
        opacity: 0.400
    }

    Image {
        id: image1
        x: 69
        width: 100
        height: 50
        fillMode: Image.PreserveAspectFit
        source: "develer-logo-2011-perslide.png"
        anchors.verticalCenter: text1.verticalCenter
    }

    RegularText {
        id: text1
        x: 365
        y: 715
        text: qsTr("Luca Ottaviano - lottaviano@develer.com")
        font.pointSize: 18
        color: "#666666"
    }

    Rectangle {
        id: rectangle2
        x: 0
        y: 0
        width: 1024
        height: 33
        color: "#a2a2a2"
        opacity: 0.400
    }

    RegularText {
        id: text2
        x: 893
        y: 4
        color: "#666666"
        text: qsTr("%1/26").arg(slideNumber)
        font.pointSize: 14
    }

    // This needs to be an assignment since we want the number to be always the
    // same, and not be updated when currentSlide changes (which has a nasty
    // effect when used in combination with animations)
    Component.onCompleted: slideNumber = Container.mainContainer.currentSlide
}
