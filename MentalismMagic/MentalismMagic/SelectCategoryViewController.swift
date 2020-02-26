//
//  SelectCategoryViewController.swift
//  MentalismMagic
//
//  Created by Valerio Volpe on 26/02/2020.
//  Copyright © 2020 Valerio Volpe. All rights reserved.
//

import UIKit

class SelectCategoryViewController: UIViewController {
    
    let segueIdentifier = "selectWordSegue"
    let fileNames: [String] = ["citiesEN", "fruitsEN", "coloursEN", "videogames", "celebritiesEN"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectCity(_ sender: Any) {
        performSegue(withIdentifier: segueIdentifier, sender: fileNames[0])
    }
    
    @IBAction func selectFruit(_ sender: Any) {
        performSegue(withIdentifier: segueIdentifier, sender: fileNames[1])
    }
    
    @IBAction func selectColour(_ sender: Any) {
        performSegue(withIdentifier: segueIdentifier, sender: fileNames[2])
    }
    
    @IBAction func selectVideogame(_ sender: Any) {
        performSegue(withIdentifier: segueIdentifier, sender: fileNames[3])
    }
    
    @IBAction func selectCelebrity(_ sender: Any) {
        performSegue(withIdentifier: segueIdentifier, sender: fileNames[4])
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == segueIdentifier {
              if let destVC = segue.destination as? WordsTableViewController {
                 destVC.filename = sender as! String
          }
        }
    }
    

}
