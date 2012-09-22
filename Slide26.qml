import QtQuick 1.1

SlideTemplate {

    SemiboldText {
        id: text2
        x: 175
        y: 81
        color: "#ed7e15"
        text: qsTr("Training")
        font.pointSize: 24
    }

    RegularText {
        id: regularText1
        x: 147
        y: 200
        width: 550
        wrapMode: Text.WordWrap
        text: "Qt Quick: GUI di nuova generazione per desktop e Raspberry Pi"
    }

    RegularText {
        x: 147
        y: 350
        text: "Ore 14, track \"Training\""
    }

    Image {
        id: image1
        x: 638
        y: 286
        width: 268
        height: 272
        fillMode: Image.PreserveAspectFit
        source: "images/raspberry_pi.jpg"
    }
}
