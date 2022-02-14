import SwiftUI

struct ContentView: View {
    
    // Stores the card currently displayed
    @State private var currentCard: Image

    // Overrrides startup code to initialize all Image objects
    init() {
        
        // See Data.swift
        generateImages()
        
        // Sets initial card to display
        self.currentCard = imagesOfCards[0]
    }

    var body: some View {
        VStack {
            
            // Card as image
            Button(action: {
                // Gets index of the card on the display
                let currentIndex = imagesOfCards.firstIndex(of: currentCard)!
                
                // End of deck loopback
                if currentIndex == 51 {
                    
                    // If at the 52nd card, move back to index 0 (1st card)
                    currentCard = imagesOfCards[0]
                } else {
                    
                    // Increments the card shown by moving forward in the array's index
                    currentCard = imagesOfCards[currentIndex + 1]
                }

            }){
                currentCard
                    .resizable()
                    .scaledToFit()
            }
            
            // Make it easier to read
            .padding()
            .font(.title2)
        }
    }
}
