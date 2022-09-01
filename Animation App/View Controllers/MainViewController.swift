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
    @IBOutlet var squareViewIcon: UIView!
    @IBOutlet var roundViewIcon: UIView!
    
    let curvesData = CurveData()
    let animationsData = AnimationData()
    var animationModel: AnimationModel? // Переменная для захвата значений анимируемого вью
    
    var selectedAnimation: String?
    var selectedCurve: String?
    
    let identifier = "goInfo"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationsAndCurvesPicker.dataSource = self
        animationsAndCurvesPicker.delegate = self
        
        animatedView.animation = animationsData.animations[0].rawValue
        animatedView.curve = curvesData.curves[0].rawValue
        
        animationModelInit()
    }
    
    // Запуск анимации
    @IBAction func startButtonAction() {
        animateView()
        animationModelInit()
    }
    
    // Смена представления анимируемой фигуры (квадрат/круг)
    @IBAction func iconButtonAction(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            squareViewIcon.backgroundColor = UIColor.systemBlue
            animatedView.layer.cornerRadius = 12
            animatedView.clipsToBounds = false
            roundViewIcon.backgroundColor = UIColor.systemGray5
        case 2:
            roundViewIcon.backgroundColor = UIColor.systemBlue
            squareViewIcon.backgroundColor = UIColor.systemGray5
            animatedView.layer.cornerRadius = 75
            animatedView.clipsToBounds = true
        default:
            break
        }
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == identifier else { return }
        let detailVC = segue.destination as? DetailViewController
        detailVC?.animationInfo = animationModel
    }
}

