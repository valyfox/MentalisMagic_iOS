//
//  ViewController.swift
//  MentalismMagic
//
//  Created by Valerio Volpe on 27/10/2019.
//  Copyright © 2019 Valerio Volpe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationController?.viewControllers = [self]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if UserDefaults.standard.bool(forKey: Options.MENU_BUTTON) {
            menuButton.backgroundColor = UIColor.clear
            menuButton.tintColor = UIColor.clear
        } else {
            menuButton.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            menuButton.tintColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        }
    }
}

