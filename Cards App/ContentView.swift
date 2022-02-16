//
//  ContentView.swift
//  Cards App
//
//  Created by Daniel Jaye Poe (Student) on 2/16/22.
//

import SwiftUI

struct ContentView: View {
    
    // Stores the card currently displayed
    @State private var currentCard: Card

    // Overrrides startup code to initialize all Image objects
    init() {
        
        // See Data.swift
        generateImages()
        
        // Sets initial card to display
        self.currentCard = deckOfCards[0]
    }

    var body: some View {
        VStack {
            
            // Card as image
            Button(action: {
                // Gets index of the card on the display
                let currentIndex = deckOfCards.firstIndex(of: currentCard)!
                
                // End of deck loopback
                if currentIndex == 51 {
                    
                    // If at the 52nd card, move back to index 0 (1st card)
                    currentCard = deckOfCards[0]

                } else {
                    
                    // Increments the card shown by moving forward in the array's index
                    currentCard = deckOfCards[currentIndex + 1]
                }

            }){
                currentCard.image
                    .resizable()
                    .scaledToFit()
            }
            
            // Make it easier to read
            .padding()
            .font(.title2)
        }
    }
}
