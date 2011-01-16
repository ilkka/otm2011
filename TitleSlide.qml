import Qt 4.7

Slide {
    property alias title: titleLabel.text
    property alias author: authorLabel.text
    property alias subtitle: subtitleLabel.text
    Column {
        anchors.fill: parent
        spacing: height * 0.1
        Text {
            id: titleLabel
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width
            font.pixelSize: parent.height * 0.1
            wrapMode: Text.WordWrap
            horizontalAlignment: Text.AlignHCenter
            text: ""
        }
        Text {
            id: subtitleLabel
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width
            font.pixelSize: titleLabel.font.pixelSize * 0.5
            wrapMode: Text.WordWrap
            horizontalAlignment: Text.AlignHCenter
            text: ""
        }
        Text {
            id: authorLabel
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width
            font.pixelSize: titleLabel.font.pixelSize * 0.6
            wrapMode: Text.WordWrap
            horizontalAlignment: Text.AlignHCenter
            text: ""
        }
    }
}
