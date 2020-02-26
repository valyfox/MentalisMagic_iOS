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
    let fileNames: [String] = [NSLocalizedString("cities", comment: "words filenames"),
                               NSLocalizedString("fruits", comment: "words filenames"),
                               NSLocalizedString("colours", comment: "words filenames"),
                               NSLocalizedString("videogames", comment: "words filenames"),
                               NSLocalizedString("celebrities", comment: "words filenames")]

    override func viewDidLoad() {
        super.viewDidLoad()

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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == segueIdentifier {
              if let destVC = segue.destination as? WordsTableViewController {
                 destVC.filename = sender as! String
          }
        }
    }    

}
