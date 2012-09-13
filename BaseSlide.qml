import QtQuick 1.1
import "Stack.js" as Container

Rectangle {
    id: baseSlide
    width: 1024
    height: 768
    focus: true

    function nextSlide() {
        parent.nextSlide()
    }

    function pushInStart() {
        var animation = Container.mainContainer.animation
        animation.page = baseSlide
        if (animation.pushIn)
            animation.pushIn.start()
    }

    function popInStart() {
        var animation = Container.mainContainer.animation
        animation.page = baseSlide
        if (animation.popIn)
            animation.popIn.start()
    }

    function pushOutStart() {
        var animation = Container.mainContainer.animation
        animation.page = baseSlide
        if (animation.pushOut)
            animation.pushOut.start()
    }

    function popOutStart() {
        var animation = Container.mainContainer.animation
        animation.page = baseSlide
        if (animation.popOut)
            animation.popOut.start()
    }

    Keys.onSpacePressed: baseSlide.nextSlide()
    Keys.onRightPressed: baseSlide.nextSlide()

    Keys.onLeftPressed: parent.previousSlide()

    MouseArea {
        anchors.fill: parent
        onClicked: baseSlide.nextSlide()
    }
}
