import Qt 4.7

/*! QML Slideshow element.
  *
  * This element is supposed to be used as the root element of a QML UI
  * to make it behave like a slideshow. It's child elements should be
  * Slides.
  */
Rectangle {
    width: 640
    height: 480
    focus: true

    /*! Current slide
      */
    property int current: 0

    /*! Children go under the slides Row
      */
    default property alias children: slides.children

    property int slidewidth: Math.min(width,height) * 0.8
    property int slideheight: slidewidth

    Keys.onRightPressed: {
        current += 1;
    }

    Keys.onLeftPressed: {
        current -= 1;
    }

    onCurrentChanged: {
        console.debug("Move to slide " + current);
        slides.x = -(current * width);
    }

    onSlidewidthChanged: {
        console.debug("setSlideWidths() due to width change");
        slides.setSlideWidths();
    }
    onSlideheightChanged: {
        console.debug("setSlideWidths() due to height change");
        slides.setSlideWidths();
    }

    Row {
        id: slides
        anchors.verticalCenter: parent.verticalCenter
        height: parent.slideheight
        width: children.length * parent.width
        spacing: parent.width - parent.slidewidth
        function setSlideWidths() {
            console.debug("Set all slides to " + parent.slidewidth + "x" + parent.slideheight);
            for (var i=0; i < children.length; ++i) {
                children[i].width = parent.slidewidth;
                children[i].height = parent.slideheight;
            }
        }
        Behavior on x {
            NumberAnimation {
                duration: 500
                easing.type: Easing.InOutCubic
            }
        }
    }

    Component.onCompleted: {
        console.debug("setSlideWidths() due to onCompleted");
        slides.setSlideWidths();
    }
}
