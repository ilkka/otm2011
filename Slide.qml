import Qt 4.7

Rectangle {
    id: container

    default property alias children: content.children
    property int margin: 10
    property alias title: title.text

    width: 100
    height: 62
    color: "white"
    border.color: "black"
    border.width: 1
    radius: 10

    Text {
        id: title
        text: "Slide title"
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.margins: parent.margin
        width: parent.width - 2 * parent.margin
        font.pixelSize: parent.height * 0.08
        font.bold: true
        wrapMode: Text.WordWrap
    }

    Item {
        id: content
        anchors.top: title.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: parent.margin
    }
}
