//
//  MainViewController.swift
//  Animation App
//
//  Created by Olegio on 31.08.2022.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var animationsAndCurvesPicker: UIPickerView!
    @IBOutlet var startButton: UIButton!
    
    let curvesData = CurveData()
    let animationsData = AnimationData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationsAndCurvesPicker.dataSource = self
        animationsAndCurvesPicker.delegate = self

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

