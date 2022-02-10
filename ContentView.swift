import SwiftUI

let cardsArray: [String] = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "jack", "queen", "king", "ace"]
let suitArray: [String] = ["diamonds", "spades", "hearts", "clubs"]

var imagesOfCards: [Image] = []

struct ContentView: View {
    
    // Stores the current card
    @State private var currentCard: Image

    /* Overrides the normal startup
     code, and adds code to generate
     each image object */
    
    init() {
        
        // Adds each card of the suit to the array, then moves on to the next suit
        for suit in suitArray {
            for card in cardsArray {
                imagesOfCards.append(Image("\(card)_of_\(suit)"))
            }
        }
        
        // Sets initial card to display
        self.currentCard = imagesOfCards[0]
    }

    var body: some View {
        VStack {
            
            // Card on screen
            currentCard
                .resizable()
                .scaledToFit()
            
            // Button to change the card
            Button("Change Card"){
                
                // End of deck loopback handling
                if imagesOfCards.firstIndex(of: currentCard)! == 51 {
                    
                    // If at the 52nd card, move back to index 0 (1st card)
                    currentCard = imagesOfCards[0]
                } else {
                    
                    // Increments the card shown by moving forward in the array's index
                    currentCard = imagesOfCards[imagesOfCards.firstIndex(of: currentCard)! + 1]
                }
                
            }
            
            // Make it easier to read
            .padding()
            .font(.title2)
        }
    }
}
