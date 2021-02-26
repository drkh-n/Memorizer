//
//  EmojiMemoryGame.swift
//  Memorizer
//
//  Created by Darkhan on 23.02.2021.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.CreateMemoryGame()
    
    static func CreateMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👾", "🤖", "🦀"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in return emojis[pairIndex] }
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
