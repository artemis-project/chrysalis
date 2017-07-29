/*

  **Main.swift**
  Chrysalis File Manager
  Version 0.1.0
  (C) 2017 | Artemis Project Team
  Licensed under GNU GPL v3

*/

import Glibc
import Foundation
import Qlift


class ChrysalisFM {
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
}

let app = ChrysalisFM()
exit(app.run())


var fm = FileManager()
print(try fm.attributesOfItem(atPath: "/home/wesley"))
