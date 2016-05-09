import QtQuick 2.4
import Ubuntu.Components 1.3
import Testplugin 1.0
/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "testplugin.liu-xiao-guo"

    width: units.gu(100)
    height: units.gu(75)

    Page {
        header: PageHeader {
            id: pageHeader
            title: i18n.tr("testplugin")
            StyleHints {
                foregroundColor: UbuntuColors.orange
                backgroundColor: UbuntuColors.porcelain
                dividerColor: UbuntuColors.slate
            }
        }

        MyType {
            id: myType

            Component.onCompleted: {
                myType.helloWorld = i18n.tr("Hello world..")
            }
        }


        Button {
            anchors.centerIn: parent
            text: "Test lib"

            onClicked: {
                myType.testlib();
            }
        }
    }
}



