//
//  ConverterViewController.swift
//  ConversionCalculatorUI
//
//  Created by Danae N Nash on 7/7/19.
//  Copyright © 2019 Danae N Nash. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    var converters: [Converter] = [Converter(label: "Farenheit to Celcius", inputUnit: "°F", outputUnit: "°C"),
                                   Converter(label: "Celcius to Farenheit", inputUnit: "°C", outputUnit: "°F"),
                                   Converter(label: "Miles to Kilometers", inputUnit: "mi", outputUnit: "km"),
                                   Converter(label: "Kilometers to Miles", inputUnit: "km", outputUnit: "mi")]
    var currentConverter: Converter?
    
    @IBAction func converterButtonAction(_ sender: UIButton) {
        let optionMenu = UIAlertController(title: nil, message: "Select a Converter", preferredStyle: .actionSheet)
        for converter in converters {
            optionMenu.addAction(UIAlertAction(title: converter.label, style: .default) {
                (action:UIAlertAction!) in
                self.setConverter(to: converter)
            })
        }
        optionMenu.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        self.present(optionMenu, animated: true, completion: nil)
    }
    
    func setConverter(to converter: Converter) {
        outputDisplay.text = converter.outputUnit
        inputDisplay.text = converter.inputUnit
        self.currentConverter = converter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaultConverter: Converter = converters[0]
        setConverter(to: defaultConverter)
    }
    
}
