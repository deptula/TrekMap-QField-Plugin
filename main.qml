import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import org.qfield
import org.qfield.gui

Item {
    id: plugin

    QfToolButton {
        id: button
        anchors.fill: parent
        icon.source: "icon.svg"
        onClicked: panel.visible = !panel.visible
    }

    Rectangle {
        id: panel
        visible: false
        width: 360
        height: 260
        radius: 8
        color: "#202020"
        border.color: "#606060"
        anchors.centerIn: parent
        z: 100

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 16
            spacing: 12

            Label {
                text: "TREKMAP"
                font.bold: true
                font.pixelSize: 22
                color: "white"
            }

            Label {
                text: "Atlas"
                color: "white"
            }

            ComboBox {
                Layout.fillWidth: true
                model: ["Karkonosze", "Góry Izerskie", "Rudawy Janowickie", "Sudety"]
            }

            Label {
                text: "Skala"
                color: "white"
            }

            ComboBox {
                Layout.fillWidth: true
                model: ["1:17 500", "1:25 000", "1:35 000"]
            }

            Button {
                text: "WCZYTAJ"
                Layout.fillWidth: true
            }

            Label {
                text: "Aktualna mapa: brak"
                color: "#dddddd"
            }
        }
    }
}
