import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.VirtualKeyboard 2.15

Window {
    color: "gray"
    id: window
    width: 320
    height: 480
    visible: true
    title: qsTr("Sec launcher")


    Rectangle {
           id: button1 //Имя кнопки

           //Размещаем в центре
           x: 10;
           y: 20;

           //Размеры кнопки
           width: 300
           height: 30

           //Цвет кнопки
           color: "dark gray"

           //Текст кнопки
           Text {
               id: buttonLabel1
               text: "Setup password manager"
               anchors.centerIn: parent;
           }

           //Действие мыши
           MouseArea {
               anchors.fill: parent
               id: mouseArea1
           }
           signal bthSetupPasswd()
       }
    Rectangle {
           id: button2 //Имя кнопки

           //Размещаем в центре
           x: 10;
           y: 70;

           //Размеры кнопки
           width: 300
           height: 30

           //Цвет кнопки
           color: "dark gray"

           //Текст кнопки
           Text {
               id: buttonLabel2
               text: "Setup secure messenger"
               anchors.centerIn: parent;
           }

           //Действие мыши
           MouseArea {
               anchors.fill: parent
               id: mouseArea2
           }
       }
    Rectangle {
           id: button3 //Имя кнопки

           //Размещаем в центре
           x: 10;
           y: 120;

           //Размеры кнопки
           width: 300
           height: 30

           //Цвет кнопки
           color: "dark gray"

           //Текст кнопки
           Text {
               id: buttonLabel3
               text: "Setup secure browser"
               anchors.centerIn: parent;
           }

           //Действие мыши
           MouseArea {
               anchors.fill: parent
               id: mouseArea3
           }
       }
    Rectangle {
           id: button4 //Имя кнопки

           //Размещаем в центре
           x: 10;
           y: 400;

           //Размеры кнопки
           width: 300
           height: 30

           //Цвет кнопки
           color: "white"

           //Текст кнопки
           Text {
               id: buttonLabel4
               text: "Setup all"
               anchors.centerIn: parent;
           }

           //Действие мыши
           MouseArea {
               anchors.fill: parent
               id: mouseArea4
           }
       }
    InputPanel {
        id: inputPanel
        z: 99
        x: 0
        y: window.height
        width: window.width


        states: State {
            name: "visible"
            when: inputPanel.active
            PropertyChanges {
                target: inputPanel
                y: window.height - inputPanel.height
            }
        }
        transitions: Transition {
            from: ""
            to: "visible"
            reversible: true
            ParallelAnimation {
                NumberAnimation {
                    properties: "y"
                    duration: 250
                    easing.type: Easing.InOutQuad
                }
            }
        }
    }
}
