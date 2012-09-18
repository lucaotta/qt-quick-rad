import QtQuick 1.1

Item {
    property Item page: null
    property int transitionDuration: 400
    signal animationCompleted

    property variant pushIn
    property variant pushOut
    property variant popIn
    property variant popOut

    pushIn: animPushIn
    popIn: animPopIn
    pushOut: animPushOut
    popOut: animPopOut

    SequentialAnimation {
        id: animPushIn
        alwaysRunToEnd: true
        PropertyAction { target: page; property: "z"; value: 1 }
        NumberAnimation { target: page; property: "x"; from: 1024; to: 0; duration: transitionDuration }

        PropertyAction { target: page; property: "z"; value: 0 }
        ScriptAction {
            script: animationCompleted()
        }
    }

    SequentialAnimation {
        id: animPushOut
        alwaysRunToEnd: true
        NumberAnimation { target: page; property: "scale"; from: 1; to: 0; duration: transitionDuration; }
        ScriptAction {
            script: animationCompleted()
        }
    }

    SequentialAnimation {
        id: animPopIn
        alwaysRunToEnd: true
        NumberAnimation { target: page; property: "scale"; from: 0; to: 1; duration: transitionDuration; }

        ScriptAction {
            script: animationCompleted()
        }
    }

    SequentialAnimation {
        id: animPopOut
        alwaysRunToEnd: true
        PropertyAction { target: page; property: "z"; value: 1 }
        NumberAnimation { target: page; property: "x"; from: 0; to: 1024; duration: transitionDuration }
        PropertyAction { target: page; property: "z"; value: 0 }

        ScriptAction {
            script: animationCompleted()
        }
    }
}
