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

    gradient: Gradient {
        GradientStop {
            position: 0.00;
            color: "#d5d5d5";
        }
        GradientStop {
            position: 1.00;
            color: "#ffffff";
        }
    }

    focus: true

    /*! Current slide
      */
    property int current: 0

    /*! Children go under the slides Row
      */
    default property alias children: slides.children

    property int slidewidth: Math.min(width * 0.8, (4/3) * height * 0.8)
    property int slideheight: (3/4) * slidewidth

    Keys.onRightPressed: {
        current += 1;
    }

    Keys.onLeftPressed: {
        current -= 1;
    }

    onCurrentChanged: {
        slides.showSlide(current);
    }

    onSlidewidthChanged: {
        slides.relayout();
    }
    onSlideheightChanged: {
        slides.relayout();
    }

    onWidthChanged: {
        slides.relayout();
    }
    onHeightChanged: {
        slides.relayout();
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
        function showSlide(idx) {
            console.debug("Move to slide " + idx);
            x = -(idx * parent.width) + ((parent.width - parent.slidewidth) / 2);
        }
        function relayout() {
            slides.setSlideWidths();
            slides.showSlide(parent.current);
        }

        Behavior on x {
            SequentialAnimation {
                NumberAnimation {
                    duration: 500
                    easing.type: Easing.InOutCubic
                }
                ScriptAction {
                    script: console.debug("X stopped at " + slides.x);
                }
            }
        }
        Component.onCompleted: {
            console.debug("setSlideWidths() due to onCompleted");
            setSlideWidths();
            showSlide(0);
        }
    }
}
