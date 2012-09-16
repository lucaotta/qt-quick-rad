import QtQuick 1.1
import "Stack.js" as Container

Rectangle {
    id: baseSlide
    width: 1024
    height: 768

    function nextSlide() {
        if (states.length === 0) {
            Container.mainContainer.nextSlide()
            return
        }

        if (state === "")
            state = states[0].name
        else {
            // find current index
            var idx
            for (idx = 0; idx < states.length; ++idx) {
                if (states[idx].name === state)
                    break
            }
            idx ++
            if (idx === states.length) {
                Container.mainContainer.nextSlide()
            }
            else
                state = states[idx].name
        }
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
