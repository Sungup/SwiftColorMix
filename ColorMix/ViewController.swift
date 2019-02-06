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
  @IBOutlet weak var redSlider: UISlider!
  @IBOutlet weak var greenSlider: UISlider!
  @IBOutlet weak var blueSlider: UISlider!
  
  /// Controlls
  @IBAction func switchChanged(_ sender: UISwitch) {
    updateColor()
  }

  @IBAction func sliderChanged(_ sender: UISlider) {
    updateColor()
  }

  /// Methods
  func updateColor() {
    let red = CGFloat(redSwitch.isOn ? redSlider.value : 0)
    let green = CGFloat(greenSwitch.isOn ? greenSlider.value : 0)
    let blue = CGFloat(blueSwitch.isOn ? blueSlider.value : 0)

    colorView.backgroundColor = UIColor(red: red, green: green, blue: blue,
                                        alpha: 1)
  }
}
