import QtQuick 1.1
import "Stack.js" as Stack

Item {
    id: item
    property alias animation: animationLoader.item
    property string animationType: "slide"

    Loader {
        id: animationLoader

        sourceComponent: {
            switch (animationType) {
            case "slide":
                return slideAnimationComponent
            case "away":
                return awayAnimationComponent
            default:
                console.log("Warning: unknown animation type!")
                return slideAnimationComponent
            }
        }
    }

    Component {
        id: slideAnimationComponent
        SlideAnimation {
        }
    }

    Component {
        id: awayAnimationComponent
        AwayAnimation {
        }
    }

    Connections {
        target: animationLoader.item
        onAnimationCompleted: Stack.changePageDone()
    }
}
