import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.2

Window {
    width: 250
    height: 250
    visible: true
    title: qsTr("Simple Number Operation")

    GridLayout{
        rows: 3
        columns: 2
        Label { text: "Number 1"} TextField { id: txtNumber1; text:"0" }
        Label { text: "Number 2"} TextField { id: txtNumber2; text:"0" }
        Label { text: "Result: "} Label { id: txtResult; text:"0" }
        Button {
            text: "Calculate"
            onClicked: {
                var sum = parseInt(txtNumber1.text)+parseInt(txtNumber2.text)
                txtResult.text = sum
            }
        }
        Button {
            text: "Quit"
            onClicked: Qt.quit()
        }

    }
}
