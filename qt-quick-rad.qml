import QtQuick 1.1
import "Stack.js" as Stack

Rectangle {
    id: container
    width: 1024
    height: 768
    focus: true
    color: "black"

    property alias fontRegular: regular
    property alias fontSemibold: semibold
    property alias animation: animationManager.animation

    property int currentSlide: 0
    property int lastSlide: 26

    function nextSlide() {
        if (currentSlide < lastSlide) {
            ++ currentSlide
            Stack.openSlide(currentSlide)
        }
    }

    function previousSlide() {
        if (currentSlide > 0) {
            Stack.popPage()
            currentSlide --
        }
    }

    AnimationManager {
        id: animationManager
    }

    FontLoader {
        id: regular
        source: "Granat-Regular.otf"
    }
    FontLoader {
        id: semibold
        source: "Granat-Semibold.otf"
    }

    // handle pagUp/pagDown
    Keys.onPressed: {
        switch (event.key) {
        case Qt.Key_PageUp:
            previousSlide()
            break
        case Qt.Key_PageDown:
            Stack.currentPage().nextSlide()
            break
        }
    }

    Keys.onSpacePressed: Stack.currentPage().nextSlide()
    Keys.onRightPressed: Stack.currentPage().nextSlide()

    Keys.onLeftPressed: previousSlide()

    MouseArea {
        anchors.fill: parent
        onClicked: {
            focus = true;
            Stack.currentPage().nextSlide()
        }
    }

    Component.onCompleted: {
        Stack.mainContainer = container
        Stack.openSlide(currentSlide)
    }
}
