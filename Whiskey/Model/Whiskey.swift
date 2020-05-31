//
//  Whiskey.swift
//  Whiskey
//
//  Created by Didier Delhaisse on 31/05/2020.
//  Copyright © 2020 Didier Delhaisse. All rights reserved.
//

import Foundation

struct Beverage {
    
    static let whiskeyTitle = ["Pick your whiskey", "Irish", "Scotch", "Japanese", "Canadian", "Bourbon", "Tennessee", "Rye", "Blended", "Single malt"]
    
    // Raw values and conform to the CaseIterable protocol.
    enum Whiskey: String, CaseIterable {
        case irish = "It has a smoother flavor than other types of whiskey. It's a whiskey that's easy to sip neat or on the rock and has a caramel coloring."
        case scotch = "The Scots are serious about making their whiskey's and have laws that distillers must follow. It must age in an oak barrel for at least three years. It makes an excellent after dinner drink."
        case japanese = "High standard, it's Japanese after all. Very close from Scotch whiskey and it's mostly used embended in mixed drinks or with a splash of soda."
        case canadian = "Like Scotch, it must be barrel-age for at least three years. It's lighter and smoother than other types of whiskey."
        case bourbon = "Bourbon is the star ingredient in mint juleps."
        case tennessee = "Technicaly classified as bourbon. Producers are required by state law to produce their whiskeys in Tennessee."
        case rye = "Made in America, it follows the distilling process of bourbon. It tends to have a spicier flavor than sweeter."
        case blended = "It's a mixture of different types of whiskey, as well as colorings, flavors and even as other grains. They are ideal for cocktails."
        case singleMalt = "Single malt whisky needs to be made from one batch of scotch at a single distillery. It must be aged for three years in oak before being bottled."
    }
}


