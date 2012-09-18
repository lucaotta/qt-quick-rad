import QtQuick 1.1

Slide {
    SemiboldText {
        id: text1
        x: 429
        y: 160
        color: "#ed7e15"
        text: qsTr("Let's talk")
        font.pointSize: 24
    }

    SemiboldText {
        id: text4
        x: 400
        y: 250
        color: "#646464"
        text: qsTr("office")
        font.pointSize: 18
    }


    RegularText {
        id: text2
        x: 400
        y: 290
        text: qsTr("+39 055 3984627 (218)")
    }

    SemiboldText {
        x: 400
        y: 350
        color: "#646464"
        text: qsTr("e-mail")
        font.pointSize: 18
    }

    RegularText {
        x: 400
        y: 390
        text: qsTr("lottaviano@develer.com")
    }

    SemiboldText {
        x: 400
        y: 450
        color: "#646464"
        text: qsTr("web")
        font.pointSize: 18
    }

    RegularText {
        x: 400
        y: 490
        text: qsTr("www.develer.com")
    }

    SemiboldText {
        x: 400
        y: 550
        color: "#646464"
        text: qsTr("twitter")
        font.pointSize: 18
    }

    RegularText {
        x: 400
        y: 590
        text: qsTr("@lucaotta")
    }
}
