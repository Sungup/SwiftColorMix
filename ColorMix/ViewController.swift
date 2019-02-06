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
    initializeView()
    resetControls()
    updateControls()
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
    updateControls()
    updateColor()
  }

  @IBAction func sliderChanged(_ sender: UISlider) {
    updateColor()
  }

  @IBAction func reset(_ sender: UIButton) {
    resetControls()
    updateControls()
    updateColor()
  }

  /// Methods
  func initializeView() {
    colorView.layer.borderColor = UIColor.black.cgColor
    colorView.layer.borderWidth = 5
    colorView.layer.cornerRadius = 20
  }

  func resetControls() {
    // Reset Switch
    redSwitch.setOn(false, animated: true)
    greenSwitch.setOn(false, animated: true)
    blueSwitch.setOn(false, animated: true)

    // Reset Slider
    redSlider.setValue(0, animated: true)
    greenSlider.setValue(0, animated: true)
    blueSlider.setValue(0, animated: true)
  }

  func updateControls() {
    redSlider.isEnabled = redSwitch.isOn
    greenSlider.isEnabled = greenSwitch.isOn
    blueSlider.isEnabled = blueSwitch.isOn
  }

  func updateColor() {
    let red = CGFloat(redSwitch.isOn ? redSlider.value : 0)
    let green = CGFloat(greenSwitch.isOn ? greenSlider.value : 0)
    let blue = CGFloat(blueSwitch.isOn ? blueSlider.value : 0)

    colorView.backgroundColor = UIColor(red: red, green: green, blue: blue,
                                        alpha: 1)
  }
}
