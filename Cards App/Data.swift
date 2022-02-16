//
//  Data.swift
//  Cards App
//
//  Created by Daniel Jaye Poe (Student) on 2/10/22.
//

import SwiftUI

struct Card: Equatable {
    let image: Image
    let rank: Int
}
// Each card type per suit
let cardsArray: [String] = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "jack", "queen", "king", "ace"]

// All suits
let suitArray: [String] = ["diamonds", "spades", "hearts", "clubs"]

// Array where all Image objects are stored
var deckOfCards: [Card] = []

// Generate each Image object on startup
func generateImages() {
    
    // Generates images in order, sorted by suit
    for suit in suitArray {
        var cardRank = 2
        for card in cardsArray {
            deckOfCards.append(Card(image: Image("\(card)_of_\(suit)"), rank: cardRank))
            cardRank += 1
        }
    }
    print(deckOfCards)
}
