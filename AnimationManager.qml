import QtQuick 1.1
import "Stack.js" as Stack

Item {
    id: item
    property alias animation: animationLoader.item

    Loader {
        id: animationLoader

        sourceComponent: awayAnimationComponent
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
