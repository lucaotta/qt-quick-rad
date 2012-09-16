import QtQuick 1.1

SlideTemplate {



    Image {
        id: image1
        x: 52
        y: 0
        width: 920
        height: 723
        fillMode: Image.PreserveAspectFit
        source: "images/bored.jpg"
    }

    SemiboldText {
        id: text2
        x: 145
        y: 91
        width: 600
        height: 38
        color: "white"
        text: "Pulsanti grigi,
                che noia!"
        font.pointSize: 48
        wrapMode: Text.WordWrap
    }

    RegularText {
        id: text1
        x: 92
        y: 604
        text: qsTr("Flickr: Sn.Ho")
        font.pixelSize: 18
        color: "white"
    }
}
