import QtQuick 2.0
import Ubuntu.Components 1.3

Item {
    property alias text: content.text
    property alias image : img.source

    Image {
        id: img
        anchors.centerIn: parent
        width: parent.width*.8
        height: parent.height*.8
        fillMode: Image.PreserveAspectFit
        antialiasing : true
    }

    //   Flickable {
    //       id: flickableContent
    ////       anchors.fill: parent
    //       width: parent.width
    //       height: parent.height

           Label {
               id: content
               width: parent.width*.8
               anchors.bottom: parent.bottom
               anchors.bottomMargin: units.gu(3)
               anchors.horizontalCenter: parent.horizontalCenter
               textFormat: Text.RichText
               wrapMode: Text.WordWrap
               fontSize: "large"
               visible: true
           }

    //       contentWidth: parent.width
    //       contentHeight: content.height
    //       clip: true
    //   }


    //   Scrollbar {
    //       flickableItem: flickableContent
    //   }
    Component.onDestruction: {
        console.log("Article content is destructed!")
    }
}
