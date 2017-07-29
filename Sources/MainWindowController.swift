/*

  **MainWindowController.swift**
  Chrysalis File Manager
  Version 0.1.0
  (C) 2017 | Artemis Project Team
  Licensed under GNU GPL v3

*/
import Qlift
import Foundation

//Create a window object that contains all of the window information
class MainWindowController: QMainWindow {

  //Init all UI components needed to be used later
  let mainWidg = QWidget()

  //Init the window and all of its components
  init() {

      //Initialize window
      super.init()
      self.geometry = QRect(x: 0, y: 0, width: 640, height: 480)
      self.windowTitle = "Chrysalis"

  }

}

// Old ChrysalisFM class code - use to determine how to rewrite Qt interface in MainWindowController

/*class ChrysalisFM {
    let app = QApplication()
    let window = QMainWindow()
    let mainWidg = QWidget()
    var layout: QHBoxLayout
    var v_layout: QVBoxLayout
    var button: QPushButton

    init() {
        self.layout = QHBoxLayout(parent: self.mainWidg)
        self.v_layout = QVBoxLayout()
        self.button = QPushButton(text: "Add Col")

        self.layout.add(widget: self.button)
        self.layout.add(layout: self.v_layout)

        self.addCol(label: "Init")
    }

    func addCol(label: String) {
        self.v_layout.add(widget: QLabel(text: label))
    }

    func run() -> Int32 {
        print("Entering main()")
        self.window.centralWidget = self.mainWidg
        print("Main Widget added")
        self.window.show()
        print("Event loop starting")
        return self.app.exec()
    }
}*/
