import QtQuick 1.1

BaseSlide {
    id: slideTemplate

    Rectangle {
        id: rectangle1
        x: 0
        y: 690
        width: 1024
        height: 78
        color: "#a2a2a2"
        opacity: 0.400

        Image {
            id: image1
            x: 69
            y: 14
            width: 100
            height: 50
            fillMode: Image.PreserveAspectFit
            source: "develer-logo-2011-perslide.png"
        }

        RegularText {
            id: text1
            x: 365
            y: 25
            text: qsTr("Luca Ottaviano - lottaviano@develer.com")
            font.pointSize: 18
        }
    }

    Rectangle {
        id: rectangle2
        x: 0
        y: 0
        width: 1024
        height: 33
        color: "#a2a2a2"
        opacity: 0.400
    }
}
