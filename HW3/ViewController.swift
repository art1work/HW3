//
//  ViewController.swift
//  HW3
//
//  Created by Артём Ермохин on 25.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewColor: UIView!
    
    @IBOutlet weak var redColorLabel: UILabel!
    @IBOutlet weak var redColorValueLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenColorLabel: UILabel!
    @IBOutlet weak var greenColorValueLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    
    
    @IBOutlet weak var blueColorLabel: UILabel!
    @IBOutlet weak var blueColorValueLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSliderSetup()
        greenSliderSetup()
        blueSliderSetup()
        colorLabelsInit()
        redColorValueLabelInit()
        greenColorValueLabelInit()
        blueColorValueLabelInit()
        viewColor.layer.cornerRadius = view.frame.width / 25
        viewColorUpdate()
    }

    @IBAction func redSliderAction(_ sender: UISlider) {
        redColorValueLabel.text = String(format: "%.2f", redSlider.value)
        viewColorUpdate()
    }

    @IBAction func greenSliderAction(_ sender: UISlider) {
        greenColorValueLabel.text = String(format: "%.2f", greenSlider.value)
        viewColorUpdate()
    }
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
        blueColorValueLabel.text = String(format: "%.2f", blueSlider.value)
        viewColorUpdate()
    }
    
    private func colorLabelsInit() {
        redColorLabel.text = "Red:"
        greenColorLabel.text = "Green:"
        blueColorLabel.text = "Blue:"
    }
    
    private func redColorValueLabelInit() {
        redColorValueLabel.text = String(format: "%.2f", redSlider.value)
    }
    
    private func greenColorValueLabelInit() {
        greenColorValueLabel.text = String(format: "%.2f", greenSlider.value)
    }
    
    private func blueColorValueLabelInit() {
        blueColorValueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    private func redSliderSetup() {
        redSlider.value = 0.5
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
    }
    
    private func greenSliderSetup() {
        greenSlider.value = 0.5
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
    }
    
    private func blueSliderSetup() {
        blueSlider.value = 0.5
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
    }
    
    private func viewColorUpdate() {
        viewColor.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }

}

