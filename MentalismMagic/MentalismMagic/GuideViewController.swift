//
//  GuideViewController.swift
//  MentalismMagic
//
//  Created by Valerio Volpe on 24/02/2020.
//  Copyright © 2020 Valerio Volpe. All rights reserved.
//

import UIKit

class GuideViewController: UIViewController {
    
    let guide:[String] = [
        "1/11\n\n" +
        "Trick Explained\n\n" +
        "Give the phone to the viewer and let him chose a word. " +
        "If he wants he can shuffle as much as he wants",
        
        "2/11\n\n" +
        "Trick Explained\n\n" +
        "Ask the viewer to read al the words out loud in the order he prefers. " +
        "You will be able to guess the word he chose",
        
        "3/11\n\n" +
        "The secret\n\n" +
        "Each word is divided into two categories: " +
        "straight words and curved words",
        
        "4/11\n\n" +
        "The secret\n\n" +
        "Straight words are words whose first letter can be drawn using only straight lines",
        
        "5/11\n\n" +
        "The secret\n\n" +
        "Curved words are words whose first letter contains at least one curved line",
        
        "6/11\n\n" +
        "The secret\n\n" +
        "Note that each letter ha to be considered as UPPERCASE in a standard font",
        
        "7/11\n\n" +
        "The secret\n\n" +
        "If the viewer chooses a straight word the app will show 9 curved words and a straight one " +
        "(the one chosen by the viewer) and the other way around",
        
        "8/11\n\n" +
        "Example\n\n" +
        "Words in the straight line category are Tokyo, Manila, Instambul...",
        
        "9/11\n\n" +
        "Example\n\n" +
        "Words in the curved line category are Beijing, Rome, Calcutta...",
        
        "10/11\n\n" +
        "Straight letters\n\n" +
        "A, E, F, H, I, L, K, L, M, N, T, V, W, X, Y, Z",
        
        "11/11\n\n" +
        "Curved letters\n\n" +
        "B, C, D, G, J, O, P, Q, R, S, U"
    ]

    let practiceSegueIdentifier = "precticeSegue"
    
    var guideIndex = 0
    
    @IBOutlet weak var textField: UITextView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var previousButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
     
     if segue.identifier == practiceSegueIdentifier {
                        if let destVC = segue.destination as? WordsTableViewController {
                          destVC.filename = "alphabet"
                    }
                  }
    }
    

}
