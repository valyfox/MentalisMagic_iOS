//
//  WordsTableViewController.swift
//  MentalismMagic
//
//  Created by Valerio Volpe on 24/02/2020.
//  Copyright © 2020 Valerio Volpe. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    let trickSegueIdentifier = "startTrick"
    let cellIdentifier = "wordCell"
    
    var filename = "CitiesEN"
    
    var words: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        tableView.backgroundView?.backgroundColor = UIColor(named: Options.COLOR_DARK)
        
        if let w = WordParser.makeList(fileName: filename) {
            words = w
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return words.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? WordTableViewCell  else {
            fatalError("The dequeued cell is not an instance of WordTableViewCell.")
        }

        cell.wordLabel.text = words[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: trickSegueIdentifier, sender: words[indexPath.row])
    }
 
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        
        if segue.identifier == trickSegueIdentifier {
              if let destVC = segue.destination as? TrickViewController {
                 destVC.selectedWord = sender as! String
                destVC.filename = filename
          }
        }
    }
    

}
