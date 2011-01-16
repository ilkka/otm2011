import Qt 4.7

Rectangle {
    id: container

    default property alias children: content.children
    property int margin: 10

    width: 100
    height: 62
    color: "white"
    border.color: "black"
    border.width: 1
    radius: 10

    Item {
        id: content
        anchors.centerIn: parent
        width: parent.width - 2 * margin
        height: parent.height - 2 * margin
    }
}
