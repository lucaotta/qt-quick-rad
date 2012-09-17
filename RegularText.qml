import QtQuick 1.1
import "Stack.js" as Container

Text {
    color: "#3f579f"
    font.pointSize: 18
    font.family: {
        if (Container.mainContainer.fontRegular)
            return Container.mainContainer.fontRegular.name
        else
            return ""
    }
}
