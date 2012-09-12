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
        id: animPopIn
        alwaysRunToEnd: true
        PropertyAction { target: page; property: "z"; value: 1 }
        NumberAnimation { target: page; property: "x"; from: -1024; to: 0; duration: transitionDuration }

        PropertyAction { target: page; property: "z"; value: 0 }
        ScriptAction {
            script: animationCompleted()
        }
    }
}
