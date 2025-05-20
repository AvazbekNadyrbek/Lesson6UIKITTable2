//
//  ModelCard.swift
//  Lesson6UIKIT
//
//  Created by Авазбек Надырбек уулу on 19.05.25.
//

import Foundation

struct ModelCard {
    var image: String
    var title: String
    var text: String
    
    static var allCards: [ModelCard] {
        [
            ModelCard(image: "img1BigHW5", title: "Title1", text: "The first card text goes here with some description"),
            ModelCard(image: "img2BigHW5", title: "Lorem Ipsum", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
            ModelCard(image: "img3BigHW5", title: "Card 3", text: "This is the third card with some example text content"),
            ModelCard(image: "img4BigHW5", title: "Last Card", text: "The final card showing some sample description text"),
        ]
    }
}
