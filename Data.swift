//
//  File.swift
//  Cards App
//
//  Created by Daniel Jaye Poe (Student) on 2/10/22.
//

import SwiftUI

// Each card type per suit
let cardsArray: [String] = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "jack", "queen", "king", "ace"]

// All suits
let suitArray: [String] = ["diamonds", "spades", "hearts", "clubs"]

// Array where all Image objects are stored
var imagesOfCards: [Image] = []

// Generate each Image object on startup
func generateImages() {
    
    // Generates images in order, sorted by suit
    for suit in suitArray {
        for card in cardsArray {
            imagesOfCards.append(Image("\(card)_of_\(suit)")
                                    .resizable()
                                    .scaledToFit()
                                 as! Image)
        }
    }
}
