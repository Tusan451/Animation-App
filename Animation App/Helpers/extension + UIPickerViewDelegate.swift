//
//  extension + UIPickerViewDelegate.swift
//  Animation App
//
//  Created by Olegio on 01.09.2022.
//

import UIKit

// Реализация протокола для UIPickerView

extension MainViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            let animation = animationsData.animations[row]
            return animation.rawValue
        } else {
            let curve = curvesData.curves[row]
            return curve.rawValue
        }
    }
}
