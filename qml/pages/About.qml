import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "AboutPage"

    allowedOrientations: Orientation.All

    Column {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: Theme.paddingMedium
        anchors.rightMargin: Theme.paddingMedium

        PageHeader {
            title: qsTr("About the DWD client")
        }

        Item {
            width: 1
            height: 3 * Theme.paddingLarge
        }

        Image {
            width: parent.width / 5
            height: width
            anchors.horizontalCenter: parent.horizontalCenter
            source: "../cover/dwd.svg"
            smooth: true
            asynchronous: true
        }

        Item {
            width: 1
            height: Theme.paddingLarge
        }

        Label {
            width: parent.width
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: Theme.fontSizeMedium
            color: Theme.primaryColor
            text: qsTr("A simple client for the brightsky api view") + "\n" +
                  qsTr("of the German Weather Service (DWD)") + "\n"
        }

        Item {
            width: 1
            height: Theme.paddingLarge
        }

        Label {
            width: parent.width
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: Theme.fontSizeExtraSmall
            color: Theme.secondaryColor
            text:  qsTr(" © 2021 Mark Washeim")
        }

        Item {
            width: 1
            height: 2 * Theme.paddingLarge
        }

        Label {
            width: parent.width
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: Theme.fontSizeSmall
            color: Theme.secondaryColor
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            text: qsTr("This program is FOSS software licensed under the terms of ")
                  + qsTr("the GNU General Public License v3.")
        }

        Item {
            width: 1
            height: 2 * Theme.paddingLarge
        }

        Label {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: Theme.paddingSmall
            color: Theme.secondaryColor
            textFormat: Text.StyledText
            linkColor: Theme.highlightColor
            font.pixelSize: Theme.fontSizeSmall
            text: "<a href=\"https://github.com/poetaster/harbour-dwd\">Source: github</a>"
            /*text: "<style>a:link{color: " + Theme.highlightColor + ";}</style>" +  "<a href=\"https://github.com/poetaster/harbour-dwd\">Source: github</a>" */
            onLinkActivated: {
                console.log("Opening external browser: " + link);
                Qt.openUrlExternally(link)
            }
        }
        /*
        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("View license")
            onClicked: {
                pageStack.push(Qt.resolvedUrl("LicensePage.qml"));
            }
        }*/

    }
}
