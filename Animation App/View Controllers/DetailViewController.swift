//
//  DetailViewController.swift
//  Animation App
//
//  Created by Olegio on 01.09.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var animationName: UILabel!
    @IBOutlet var curveName: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var dampingLabel: UILabel!
    @IBOutlet var velocityLabel: UILabel!
    @IBOutlet var rotateLabel: UILabel!
    @IBOutlet var codeLabel: UILabel!
    
    var animationInfo: AnimationModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoSettings()
    }
}
