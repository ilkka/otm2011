import Qt 4.7

Slide {
    property alias title: titleLabel.text
    property alias author: authorLabel.text
    property alias subtitle: subtitleLabel.text
    Column {
        anchors.fill: parent
        Text {
            id: titleLabel
            anchors.horizontalCenter: parent.horizontalCenter
            text: ""
        }
        Text {
            id: subtitleLabel
            anchors.horizontalCenter: parent.horizontalCenter
            text: ""
        }
        Text {
            id: authorLabel
            anchors.horizontalCenter: parent.horizontalCenter
            text: ""
        }
    }
}
