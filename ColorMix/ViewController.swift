//
//  ViewController.swift
//  ColorMix
//
//  Created by 文盛業 on 2019/02/06.
//  Copyright © 2019 Sungup Priv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

    updateColor()
  }

  /// Outlets
  @IBOutlet weak var colorView: UIView!
  @IBOutlet weak var redSwitch: UISwitch!

  /// Controlls
  @IBAction func switchChanged(_ sender: UISwitch) {
    updateColor()
  }

  /// Methods
  func updateColor() {
    colorView.backgroundColor = redSwitch.isOn ? .red : .black
  }
}

