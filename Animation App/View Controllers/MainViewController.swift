//
//  MainViewController.swift
//  Animation App
//
//  Created by Olegio on 31.08.2022.
//

import UIKit
import Spring

class MainViewController: UIViewController {

    @IBOutlet var animationsAndCurvesPicker: UIPickerView!
    @IBOutlet var startButton: UIButton!
    @IBOutlet var animatedView: SpringView!
    
    let curvesData = CurveData()
    let animationsData = AnimationData()
    var animationModel: AnimationModel?
    
    var selectedAnimation: String?
    var selectedCurve: String?
    
    let identifier = "goInfo"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationsAndCurvesPicker.dataSource = self
        animationsAndCurvesPicker.delegate = self
        
        animatedView.animation = animationsData.animations[0].rawValue
        animatedView.curve = curvesData.curves[0].rawValue
    }
    
    @IBAction func startButtonAction() {
        animateView()
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            let animation = animationsData.animations[row]
            selectedAnimation = animation.rawValue
        } else {
            let curve = curvesData.curves[row]
            selectedCurve = curve.rawValue
        }
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == identifier else { return }
        let detailVC = segue.destination as? DetailViewController
        animationModel = AnimationModel(name: animatedView.animation, curveValue: animatedView.curve, durationValue: animatedView.duration, dampingValue: animatedView.damping, velocityValue: animatedView.velocity, rotateValue: animatedView.rotate)
        detailVC?.animationInfo = animationModel
    }
}

