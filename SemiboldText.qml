import QtQuick 1.1
import "Stack.js" as Container

Text {
    font.family: {
        if (Container.mainContainer.fontSemibold)
            return Container.mainContainer.fontSemibold.name
        else
            return ""
    }
}
