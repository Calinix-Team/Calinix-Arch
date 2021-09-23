import QtQuick 2.0

CustomComboBox {
    id: combo

    property bool disableText: false

    model: keyboard.layouts
    index: keyboard.currentLayout

    onValueChanged: keyboard.currentLayout = id

    Connections {
        target: keyboard
        onCurrentLayoutChanged: combo.index = keyboard.currentLayout
    }

    rowDelegate: Rectangle {
        color: "transparent"

        Text {
            anchors.margins: 10
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            verticalAlignment: Text.AlignVCenter
            text: modelItem && !combo.disableText ? modelItem.modelData.longName : ""
            font.pixelSize: 14
            color: combo.textColor
        }
    }
}
