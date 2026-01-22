import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: root
    width: Screen.width
    height: Screen.height

    Image {
        anchors.fill: parent
        source: "assets/1.jpg"
        fillMode: Image.PreserveAspectCrop
    }

    Column {
        id: loginBlock
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 80
        spacing: 12

        TextField {
            id: usernameField
            placeholderText: "Username"
            width: 250
        }

        TextField {
            id: passwordField
            placeholderText: "Password"
            echoMode: TextInput.Password
            width: 250
        }

        Button {
            text: "Login"
            width: 250
            onClicked: sddm.login(usernameField.text, passwordField.text, sessionModel.lastIndex)
        }

        Text {
            id: errorText
            color: "red"
            text: ""
        }
    }

    // ------------------------
    // Выбор сессии
    // ------------------------
    ComboBox {
        id: sessionBox
        model: sessionModel
        textRole: "name"
        anchors.top: loginBlock.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        width: 250
    }

    // ------------------------
    // Панель выключения / перезагрузки
    // ------------------------
    Row {
        id: powerMenu
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 50
        spacing: 20

        Button {
            text: "Shutdown"
            onClicked: sddm.powerOff()
        }

        Button {
            text: "Restart"
            onClicked: sddm.reboot()
        }

        Button {
            text: "Suspend"
            onClicked: sddm.suspend()
        }
    }
}

