//
//  WordParser.swift
//  MentalismMagic
//
//  Created by Andrea Vignali on 24/02/2020.
//  Copyright © 2020 Valerio Volpe. All rights reserved.
//

import Foundation

//Prende una lista di parole e la suddivide in due liste con le parole curve e dritte
class WordParser {
    
    static let shared = WordParser()
    let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let lettereDritte = "AEFHIKLMNTVWXYZ"
    let lettereCurve = "BCDGJOPQRSU"
    
    init(){}

    func makeList(fileName: String) -> [String]? {
        if let path = Bundle.main.path(forResource: fileName, ofType: "txt") {
            do {
                let data = try String(contentsOfFile: path, encoding: .utf8)
                let list = data.components(separatedBy: .newlines).filter { alphabet.contains($0.prefix(1).capitalized) }.sorted()
                return list
            } catch let error {
                print("Got an error \(error)")
            }
        }
        return nil
    }
    
    func parse(fileName: String) -> ([String], [String])? {
        if let completeList = makeList(fileName: fileName) {
            let dritte = completeList.filter { lettereDritte.contains($0.prefix(1).capitalized)}
            let curve = completeList.filter {lettereCurve.contains($0.prefix(1).capitalized)}
            return (dritte, curve)
        }
        return nil
    }
    
    func selectWord(fileName: String, word: String) -> [String]? {
        if let (dritte, curve) = parse(fileName: fileName) {
            if dritte.contains(word) {
                return curve
            } else {
                return dritte
            }
        }
        return nil
    }
}
