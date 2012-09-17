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
        text: " Ottimizzato per mobile e set top box"
    }

    RegularText {
        id: regularText2
        x: 147
        y: 240
        text: " Ha senso usarlo su desktop se:"
    }

    RegularText {
        id: regularText3
        x: 197
        y: 290
        text: " Si vuole una bella interfaccia grafica con molti effetti e animazioni"
    }

    RegularText {
        id: regularText4
        x: 197
        y: 340
        text: " Che sia la stessa su tutte le piattaforme"
    }

    RegularText {
        x: 197
        y: 390
        text: " Che non usi widget nativi"
    }
}
