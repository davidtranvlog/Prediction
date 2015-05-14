//
//  Prediction.swift
//  Prediction
//
//  Created by Thao Phung on 5/6/15.
//  Copyright (c) 2015 Thao Phung. All rights reserved.
//

import Foundation

class Predictions
{
    // 1. An array of prediction
    var predictions = ["You can do it!", "Don't worry if plan A fails, there are 25 more letters in the alphabet", "WHen the past comes knocking, don't answer. It has nothing new to tell you", "If people are talking behind your back, be happy that you are the one in front", "When you fall, I will be there to catch you", "Beleive yourself and make decision!", "You're right!", "Move on!", "The road to success is always under construction", "Stop worrying about the world ending today. It's already tomorrow in Australia", "If nobody sees you eating it, it doesn't contain any calories", "Never let a fool kiss you, or a kiss fool you", "Coincidence is God's way of remaining anonymous", "If you die an elevator, be sure to push the Up button", "Always remember you're unique, just like everyone else", "Sometimes you succeed...and other times you learn", "Have no fear of perfection, you'll never reach it", "Don't press your luck, you might pop it.", "You already know something you don't even know that you know", "If you're always busy busy busy, you can't enjoy enjoy enjoy your life", "Beware of computer programmers that carry screwdrivers"]
    
    // 2. Number of predictions
        var count: Int {
        return predictions.count
    }
    
    // A function that return a random prediction
    func randomPrediction() -> String
    {
        let randomIndex = Int(arc4random()) % predictions.count
        let randomPrediction = predictions[randomIndex]
        return randomPrediction
    }

}