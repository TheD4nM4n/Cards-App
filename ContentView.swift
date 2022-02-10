import SwiftUI

let cardsArray: [String] = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "jack", "queen", "king", "ace"]
let suitArray: [String] = ["diamonds", "spades", "hearts", "clubs"]

var imagesOfCards: [Image] = []

struct ContentView: View {
    
    @State private var currentCard: Image

    init() {
        for suit in suitArray {
            for card in cardsArray {
                imagesOfCards.append(Image("\(card)_of_\(suit)"))
            }
        }
        self.currentCard = imagesOfCards[0]
    }

    var body: some View {
        VStack {
            currentCard
                .resizable()
                .scaledToFit()
            
            Button("Change Card"){
                if imagesOfCards.firstIndex(of: currentCard)! == 51 {
                    currentCard = imagesOfCards[0]
                } else {
                    currentCard = imagesOfCards[imagesOfCards.firstIndex(of: currentCard)! + 1]
                }
                
            }
            .padding()
            .font(.title2)
        }
    }
}
