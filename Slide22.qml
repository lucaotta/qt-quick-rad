import QtQuick 1.1

SlideTemplate {

    SemiboldText {
        id: text2
        x: 175
        y: 81
        color: "#ed7e15"
        text: qsTr("Quando ha senso usare Qt Quick?")
        font.pointSize: 24
    }

    RegularText {
        id: regularText1
        x: 147
        y: 190
        text: "Esempio: Spotify"
    }

    Image {
        x: 196
        y: 234
        width: 632
        height: 453
        fillMode: Image.PreserveAspectFit
        source: "images/spotify-ui.gif"
    }
}
