import QtQuick 1.1

BaseSlide {
    id: slide

    Image {
        x: 56
        y: 164
        width: 181
        height: 75
        smooth: true
        fillMode: Image.PreserveAspectFit
        source: "develer-logo-2011-color.png"
    }

    Rectangle {
        id: rectangle1
        x: 0
        y: -17
        width: 283
        height: 785
        color: "#a2a2a2"
        opacity: 0.400
    }
}
