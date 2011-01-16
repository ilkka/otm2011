import Qt 4.7

Slideshow {
    width: 640
    height: 480
    Slide {
        title: "Scrum kohtaa prototypointiprojektin"
        Text {
            anchors.centerIn: parent
            text: "Hello World"
        }
    }
    Slide {
        title: "Mikä mies?"
        Text {
            text: "Hello again, world"
        }
    }
}
