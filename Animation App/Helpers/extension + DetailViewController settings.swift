//
//  extension + DetailViewController settings.swift
//  Animation App
//
//  Created by Olegio on 01.09.2022.
//

import Spring

extension DetailViewController {
    // Метод для отображения подробной информации
    func infoSettings() {
        animationName.text = animationInfo.name
        curveName.text = animationInfo.curveValue
        durationLabel.text = animationInfo.durationValue.formatted()
        dampingLabel.text = animationInfo.dampingValue.formatted()
        velocityLabel.text = animationInfo.velocityValue.formatted()
        rotateLabel.text = animationInfo.rotateValue.formatted()
        codeLabel.text =
        "animatedView.animation = \"\(animationName.text ?? "_")\"\nanimatedView.curve = \"\(curveName.text ?? "_")\"\nanimatedView.animate()"
    }
}
