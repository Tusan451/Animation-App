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
    
    var selectedAnimation: String?
    var selectedCurve: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationsAndCurvesPicker.dataSource = self
        animationsAndCurvesPicker.delegate = self

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

