import Qt 4.7

Slideshow {
    width: 640
    height: 480
    Slide {
        Text {
            anchors.centerIn: parent
            text: "Hello World"
        }
    }
    Slide {
        Text {
            text: "Hello again, world"
        }
    }
}
