//
//  Converter.swift
//  ConversionCalculatorUI
//
//  Created by Danae N Nash on 7/7/19.
//  Copyright © 2019 Danae N Nash. All rights reserved.
//

import Foundation

struct Converter {
    let label: String
    let inputUnit: String
    let outputUnit: String
    init(label: String, inputUnit: String, outputUnit: String) {
        self.label = label
        self.inputUnit = inputUnit
        self.outputUnit = outputUnit
    }
}
