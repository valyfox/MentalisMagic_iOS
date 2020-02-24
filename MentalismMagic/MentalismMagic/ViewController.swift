//
//  ViewController.swift
//  MentalismMagic
//
//  Created by Valerio Volpe on 27/10/2019.
//  Copyright © 2019 Valerio Volpe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let tokyo = WordParser.shared.selectWord(fileName: "Cities", word: "Tokyo"){
            print(tokyo)
            print(tokyo.count)
        }
    }


}

