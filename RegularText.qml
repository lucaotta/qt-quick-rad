import QtQuick 1.1
import "Stack.js" as Container

Text {
    font.family: {
        if (Container.mainContainer.fontRegular)
            return Container.mainContainer.fontRegular.name
        else
            return ""
    }
}
