//
//  extension + AnimationModelInit.swift
//  Animation App
//
//  Created by Olegio on 01.09.2022.
//

import Foundation

extension MainViewController {
    // Инициализация Передаваемых значений
    func animationModelInit() {
        animationModel = AnimationModel(name: animatedView.animation, curveValue: animatedView.curve, durationValue: animatedView.duration, dampingValue: animatedView.damping, velocityValue: animatedView.velocity, rotateValue: animatedView.rotate)
    }
}
