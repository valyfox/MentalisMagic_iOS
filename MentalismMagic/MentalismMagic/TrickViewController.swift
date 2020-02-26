//
//  TrickViewController.swift
//  MentalismMagic
//
//  Created by Valerio Volpe on 25/02/2020.
//  Copyright © 2020 Valerio Volpe. All rights reserved.
//

import UIKit

class TrickViewController: UIViewController {
    
    var selectedWord = ""
    var filename = "CitiesEN"
    var otherWords: [String] = []

    @IBOutlet weak var label0: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label9: UILabel!
    
    private var labels:[UILabel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let w = WordParser.shared.selectWord(fileName: filename, word: selectedWord) {
            otherWords = w
        }
        
        labels.append(label0)
        labels.append(label1)
        labels.append(label2)
        labels.append(label3)
        labels.append(label4)
        labels.append(label5)
        labels.append(label6)
        labels.append(label7)
        labels.append(label8)
        labels.append(label9)
        
        shuffleWords()
       
    }
    
    func shuffleWords() {
        let words = otherWords.choose(labels.count)
        
        for i in 0..<labels.count {
            labels[i].text = words[i]
            labels[i].backgroundColor = UIColor.clear
        }
        
        let index = Int.random(in: 0 ..< labels.count)
        labels[index].text = selectedWord
        if(UserDefaults.standard.bool(forKey: Options.HIGHLIGHT)) {
            labels[index].backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        }
    }

    @IBAction func shuffle(_ sender: Any) {
        shuffleWords()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension Collection {
    func choose(_ n: Int) -> ArraySlice<Element> { shuffled().prefix(n) }
}
