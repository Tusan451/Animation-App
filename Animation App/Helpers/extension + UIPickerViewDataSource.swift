//
//  extension + UIPickerViewDataSource.swift
//  Animation App
//
//  Created by Olegio on 01.09.2022.
//

import UIKit

extension MainViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2    
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return animationsData.animations.count
        case 1:
            return curvesData.curves.count
        default:
            return 0
        }
    }
}
