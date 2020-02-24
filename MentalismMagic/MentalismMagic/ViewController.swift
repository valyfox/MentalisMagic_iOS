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
        
        if let path = Bundle.main.path(forResource: "Cities", ofType: "rtf") {
            do {
                let data = try String(contentsOfFile: path, encoding: .utf8)
                let myStrings = data.components(separatedBy: .newlines)
                let string = "ciao"
            } catch let error {
                print("Got an error \(error)")
            }
        }
    }


}

