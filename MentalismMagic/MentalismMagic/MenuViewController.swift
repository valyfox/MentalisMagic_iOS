//
//  MenuViewController.swift
//  MentalismMagic
//
//  Created by Valerio Volpe on 25/02/2020.
//  Copyright © 2020 Valerio Volpe. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    

    @IBOutlet weak var switchMenu: UISwitch!
    @IBOutlet weak var switchHighlight: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switchHighlight.isOn = UserDefaults.standard.bool(forKey: Options.HIGHLIGHT)
        switchMenu.isOn = UserDefaults.standard.bool(forKey: Options.MENU_BUTTON)
    }
    
    @IBAction func menuButtoSwitch(_ sender: Any) {
        UserDefaults.standard.set(switchMenu.isOn, forKey: Options.MENU_BUTTON)
    }
    
    @IBAction func highlightSwitch(_ sender: Any) {
        UserDefaults.standard.set(switchHighlight.isOn, forKey: Options.HIGHLIGHT)
    }
    
}
