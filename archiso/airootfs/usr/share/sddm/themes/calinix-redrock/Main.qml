/***********************************************************************/

import QtQuick 2.0
import SddmComponents 2.0
import "components"

Rectangle {
    id: root
    width: 640
    height: 480
    state: "stateLogin"

    readonly property int hMargin: 40
    readonly property int vMargin: 30
    readonly property int m_powerButtonSize: 40
    readonly property color textColor: "#0f0f0f"

    TextConstants { id: textConstants }

    states: [
        State {
            name: "statePower"
            PropertyChanges { target: loginFrame; opacity: 0}
            PropertyChanges { target: userFrame; opacity: 0}
        },
        State {
            name: "stateSession"
            PropertyChanges { target: loginFrame; opacity: 0}
            PropertyChanges { target: userFrame; opacity: 0}
        },
        State {
            name: "stateUser"
            PropertyChanges { target: loginFrame; opacity: 0}
            PropertyChanges { target: userFrame; opacity: 1}
        },
        State {
            name: "stateLogin"
            PropertyChanges { target: loginFrame; opacity: 1}
            PropertyChanges { target: userFrame; opacity: 0}
        }

    ]

    Item {
        id: mainFrame
        property variant geometry: screenModel.geometry(screenModel.primary)
        x: geometry.x; y: geometry.y; width: geometry.width; height: geometry.height

        Image {
            id: mainFrameBackground
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
            source: "images/background.jpeg"
        }


        Item {
            id: centerArea
            width: parent.width
            height: parent.height / 3
            anchors.top: parent.top
            anchors.topMargin: parent.height / 5


            UserFrame {
                id: userFrame
                anchors.fill: parent
                enabled: root.state == "stateUser"
                onSelected: {
                    console.log("Select user:", userName)
                    root.state = "stateLogin"
                    loginFrame.userName = userName
                    loginFrame.input.forceActiveFocus()
                }
                onNeedClose: {
                    root.state = "stateLogin"
                    loginFrame.input.forceActiveFocus()
                }
            }

            LoginFrame {
                id: loginFrame
                anchors.fill: parent
                enabled: root.state == "stateLogin"
                opacity: 0
                transformOrigin: Item.Top
            }
        }

   Rectangle {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width: 250
        height: 200
        color: "transparent"
        visible: primaryScreen
        Column {
            id: sleepColumn
            spacing: 10
            anchors.right: rebootColumn.left
            anchors.rightMargin: 90;
            ImageButton {
                id: btnSleep
                anchors.horizontalCenter: parent.horizontalCenter
                width: 50
                source: "images/sleep.png"
                onClicked: sddm.suspend()
                KeyNavigation.backtab: btnPoweroff; KeyNavigation.tab: session
            }

            Text {
                text: "Sleep"
                color: "#eeeeee"
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
        Column {
            id: rebootColumn
            spacing: 10
            anchors.horizontalCenter: parent.horizontalCenter

            ImageButton {
                id: btnReboot
                anchors.horizontalCenter: parent.horizontalCenter
                width: 50
                source: "images/restart.png"
                onClicked: sddm.reboot()
            }

            Text {
                text: "Restart"
                color: "#eeeeee"
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Column {
            id: poweroffColumn
            spacing: 10
            anchors.left: rebootColumn.right
            anchors.leftMargin: 90;

            ImageButton {
                id: btnPoweroff
                anchors.horizontalCenter: parent.horizontalCenter
                width: 50
                source: "images/shutdown.png"
                onClicked: sddm.powerOff()
                KeyNavigation.backtab: btnReboot; KeyNavigation.tab: session
            }

            Text {
                text: "Shut Down"
                color: "#eeeeee"
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }
        }
        Rectangle {
            id: actionBar
            anchors.top: parent.top;
            color: "transparent"
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width; height: 30
            visible: primaryScreen
            // Clock
             Row {
                 height: parent.height
                 anchors.right: parent.right
                 anchors.margins: 5
                 spacing: 5
                 // Session Information
                CustomComboBox {
                    id: session
                    height: parent.height
                    color: "transparent"
                    borderColor: "transparent"
                    borderWidth: 0
                    textColor: "white"
                    dropdownColor: "#22000000"
                    hoverColor: "#77000000"
                    width: 245
                    anchors.verticalCenter: parent.verticalCenter
                    arrowIcon: "images/angle-down.png"
                    model: sessionModel
                    index: sessionModel.lastIndex
                    KeyNavigation.backtab: btnPoweroff; KeyNavigation.tab: layoutBox
                }
                Image {
                    id: img
                    height: parent.height
                    source: "images/keyboard.png"
                    anchors.margins: 0
                    fillMode: Image.PreserveAspectFit
                }
                // Keyboard Layout
                CustomLayoutBox {
                    id: layoutBox
                    width: 200
                    disableText: false
                    color: "transparent"
                    borderColor: "transparent"
                    borderWidth: 0
                    textColor: "white"
                    dropdownColor: "#22000000"
                    hoverColor: "#77000000"
                    anchors.verticalCenter: parent.verticalCenter
                    arrowIcon: "images/angle-down.png"
                }
                InlineClock {
                }
            }
        }
}
