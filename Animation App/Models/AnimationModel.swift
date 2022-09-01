//
//  AnimationModel.swift
//  Animation App
//
//  Created by Olegio on 01.09.2022.
//

import Spring

// Тип данных для захвата и передачи значений анимации

struct AnimationModel {
    var name: String
    var curveValue: String
    var durationValue: CGFloat
    var dampingValue: CGFloat
    var velocityValue: CGFloat
    var rotateValue: CGFloat
}
