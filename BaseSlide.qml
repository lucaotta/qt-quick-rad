import QtQuick 1.1
import "Stack.js" as Container

Rectangle {
    id: baseSlide
    width: 1024
    height: 768

    function nextSlide() {
        Container.mainContainer.nextSlide()
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
}
