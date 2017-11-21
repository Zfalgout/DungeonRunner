//
//  Item.swift
//  DungeonRunner
//
//  Created by Zack Falgout on 11/21/17.
//  Copyright © 2017 Zack Falgout. All rights reserved.
//

import Foundation

class Item: ItemProtocol {
    
    let rarity: Rarity
    
    var durabilityMax: Int
    var durabilityCurrent: Int
    var cost: Int
    var equipped: Bool
    
    init(rarity: Rarity, durabilityMax: Int, cost: Int){
        self.rarity = rarity
        self.durabilityMax = durabilityMax
        self.cost = cost
        //Start at max durability
        self.durabilityCurrent = durabilityMax
        self.equipped = false
    }
    
    func repair() {
        //var percentageToRepair = 1 - (durabilityCurrent/durabilityMax)
        self.durabilityCurrent = durabilityMax
    }

}
