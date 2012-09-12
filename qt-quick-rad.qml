import QtQuick 1.1
import "Stack.js" as Stack

Rectangle {
    id: container
    width: 1024
    height: 768

    property alias fontRegular: regular
    property alias fontSemibold: semibold
    property alias animation: animationManager.animation

    function nextSlide() {
        if (Stack.openSlide(privateProps.currentSlide + 1) !== null)
            privateProps.currentSlide ++
    }

    function previousSlide() {
        console.log("previous slide, currentSlide: " + privateProps.currentSlide)
        if (privateProps.currentSlide > 0) {
            Stack.popPage()
            privateProps.currentSlide --
        }
    }

    QtObject {
        id: privateProps

        property int currentSlide: 0
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

    Component.onCompleted: {
        Stack.mainContainer = container
        Stack.openSlide(privateProps.currentSlide)
    }
}
