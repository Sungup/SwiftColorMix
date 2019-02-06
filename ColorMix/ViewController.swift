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
  @IBOutlet weak var greenSwitch: UISwitch!
  @IBOutlet weak var blueSwitch: UISwitch!

  /// Controlls
  @IBAction func switchChanged(_ sender: UISwitch) {
    updateColor()
  }

  /// Methods
  func updateColor() {
    colorView.backgroundColor = UIColor(red: redSwitch.isOn ? 1 : 0,
                                        green: greenSwitch.isOn ? 1 : 0,
                                        blue: blueSwitch.isOn ? 1 : 0,
                                        alpha: 1)
  }
}

