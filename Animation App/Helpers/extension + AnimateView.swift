//
//  extension + AnimateView.swift
//  Animation App
//
//  Created by Olegio on 01.09.2022.
//

import Spring

extension MainViewController {
    // Метод для анимации View
    func animateView() {
        if let animation = selectedAnimation, let curve = selectedCurve {
            animatedView.animation = animation
            animatedView.curve = curve
            animatedView.animate()
        } else if selectedAnimation != nil && selectedCurve == nil {
            animatedView.animation = selectedAnimation!
            animatedView.curve = curvesData.curves[0].rawValue
            animatedView.animate()
        } else if selectedCurve != nil && selectedAnimation == nil {
            animatedView.curve = selectedCurve!
            animatedView.animation = animationsData.animations[0].rawValue
            animatedView.animate()
        } else {
            animatedView.animation = animationsData.animations[0].rawValue
            animatedView.curve = curvesData.curves[0].rawValue
            animatedView.animate()
        }
    }
}
