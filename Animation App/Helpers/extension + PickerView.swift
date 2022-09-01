//
//  extension + PickerView.swift
//  Animation App
//
//  Created by Olegio on 01.09.2022.
//

import Spring

// Метод для сохранения выбранных значений анимации

extension MainViewController {
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            let animation = animationsData.animations[row]
            selectedAnimation = animation.rawValue
        } else {
            let curve = curvesData.curves[row]
            selectedCurve = curve.rawValue
        }
    }
}
