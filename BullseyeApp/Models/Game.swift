//
//  Game.swift
//  BullseyeApp
//
//  Created by kim jong moon on 12/05/2021.
//

import Foundation

struct Game {
    var target = Int.random(in: 2..<100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        100 - abs(target - sliderValue)
    }
}



//func points(sliderValue: Int) -> Int {
//    var difference = self.target - sliderValue
//
//    if difference < 0 {
//        difference *= -1
//    }
//    let awardedPoints = 100 - difference
//    return awardedPoints
//}
