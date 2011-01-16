import Qt 4.7

Item {
    default property alias text: point.text
    width: parent.width
    height: 62

    Text {
        id: bullet
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        text: "\u2022"
    }
    Text {
        id: point
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: bullet.right
        anchors.leftMargin: 10
        anchors.right: parent.right
        wrapMode: Text.WordWrap
        text: ""
    }
}
