//
//  ViewController.swift
//  DicasProjeto
//
//  Created by Jhoney da Silva Lopes on 11/10/17.
//  Copyright © 2017 Jhoney da Silva Lopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainStack: UIStackView!
    @IBOutlet weak var middleView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradient()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()        
    }

    func setupGradient() {
        let gradient: CAGradientLayer = CAGradientLayer()
        
        gradient.colors = [UIColor.blue.cgColor, UIColor.red.cgColor]
        gradient.locations = [0.0 , 1.0]
        gradient.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.frame = CGRect(x: 0.0, y: 0.0, width: self.middleView.frame.size.width, height: self.middleView.frame.size.height)
        
        self.middleView.layer.insertSublayer(gradient, at: 0)
    }

}

