import Qt 4.7

Slide {
    property alias title: titleLabel.text
    property alias author: authorLabel.text
    property alias subtitle: subtitleLabel.text
    Column {
        anchors.fill: parent
        Text {
            id: titleLabel
            text: ""
        }
        Text {
            id: authorLabel
            text: ""
        }
        Text {
            id: subtitleLabel
            text: ""
        }
    }
}
