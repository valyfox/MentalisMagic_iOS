//
//  GuideViewController.swift
//  MentalismMagic
//
//  Created by Valerio Volpe on 24/02/2020.
//  Copyright © 2020 Valerio Volpe. All rights reserved.
//

import UIKit

class GuideViewController: UIViewController {
    
    let guide:[String] = [NSLocalizedString("guide_trick_1", comment: "guide"),
                          NSLocalizedString("guide_trick_2", comment: "guide"),
                          NSLocalizedString("guide_1", comment: "guide"),
                          NSLocalizedString("guide_2", comment: "guide"),
                          NSLocalizedString("guide_3", comment: "guide"),
                          NSLocalizedString("guide_4", comment: "guide"),
                          NSLocalizedString("guide_5", comment: "guide"),
                          NSLocalizedString("guide_example_1", comment: "guide"),
                          NSLocalizedString("guide_example_2", comment: "guide"),
                          NSLocalizedString("guide_group_straight", comment: "guide"),
                          NSLocalizedString("guide_group_curved", comment: "guide")]

    let practiceSegueIdentifier = "precticeSegue"
    
    var guideIndex = 0
    
    @IBOutlet weak var textField: UITextView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var previousButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textField.text = guide[guideIndex]
        previousButton.isEnabled = false
        nextButton.isEnabled = true
    }
    
    @IBAction func next(_ sender: Any) {
        if(guideIndex >= guide.count) {return}
            
        guideIndex -= -1
        textField.text = guide[guideIndex]
        
        updateButtonEnable()
    }
    
    @IBAction func previous(_ sender: Any) {
        if(guideIndex < 0) {return}
        
        guideIndex += -1
        textField.text = guide[guideIndex]
        
        updateButtonEnable()
    }
    
    func updateButtonEnable() {
        previousButton.isEnabled = false
        nextButton.isEnabled = false
        if(guideIndex < guide.count - 1) {nextButton.isEnabled = true}
        if(guideIndex > 0) {previousButton.isEnabled = true}
    }
    
    @IBAction func startPractice(_ sender: Any) {
        performSegue(withIdentifier: practiceSegueIdentifier, sender: sender)
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
     if segue.identifier == practiceSegueIdentifier {
                        if let destVC = segue.destination as? WordsTableViewController {
                          destVC.filename = "alphabet"
                    }
                  }
    }
    

}
