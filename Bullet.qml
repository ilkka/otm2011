import Qt 4.7

Item {
    default property alias text: point.text
    width: 100
    height: 62
    Text {
        id: bullet
        text: "*"
    }
    Text {
        id: point
        text: ""
    }
}
