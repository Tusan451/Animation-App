//
//  extension + AnimationModelInit.swift
//  Animation App
//
//  Created by Olegio on 01.09.2022.
//

import Foundation

// Метод для инициализации передаваемых значений

extension MainViewController {
    func animationModelInit() {
        animationModel = AnimationModel(name: animatedView.animation, curveValue: animatedView.curve, durationValue: animatedView.duration, dampingValue: animatedView.damping, velocityValue: animatedView.velocity, rotateValue: animatedView.rotate)
    }
}
