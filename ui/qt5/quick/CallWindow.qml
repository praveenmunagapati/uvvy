/* Call Window */
import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Window 2.1

Window {
    property string avatarUrl
    property string userName
    property string callStatus
    property alias hangupButton: hangup

    width: { r.width < 200 ? 200 : r.width }
    height: { r.height < 100 ? 100 : r.height }
    Row {
        id: r
        spacing: 7
        // inside
        // user avatar on the left, 96x96 fixed
        Image {
            width: 96
            height: 96
            source: avatarUrl
        }
        Column {
            spacing: 5
            Text {
                text: userName
            }
            Text {
                text: callStatus
            }
            // signal meter
            //Component {
            //    id: meter
            //}
        }
    }
    Button {
        id: hangup
        text: "Hang up"
        anchors.bottom: parent.bottom
        anchors.right: parent.right
    }
}
