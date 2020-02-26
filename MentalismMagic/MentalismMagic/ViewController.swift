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
            menuButton.backgroundColor = UIColor(named: Options.COLOR_ACCENT)
            menuButton.tintColor = UIColor(named: Options.COLOR_CONTRAST_LIGHT)
        }
    }
}

