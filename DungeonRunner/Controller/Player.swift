//
//  Player.swift
//  DungeonRunner
//
//  Created by Zack Falgout on 11/21/17.
//  Copyright © 2017 Zack Falgout. All rights reserved.
//

import Foundation

class Player: Character, PlayerProtocol {
    
    var gold: Int
    var inventory: [Item]
    
    init(health: Int, mana: Int, str: Int, dex: Int, vit: Int, wis: Int, lvl: Int, gold: Int) {
        
        self.gold = 0
        self.inventory = []
        
        super.init(health: health, mana: mana, str: str, dex: dex, vit: vit, wis: wis, lvl: lvl)
    }
    
    func sell(_ item: Item) {
        self.gold += item.cost
    }
    
    func buy(_ item: Item) {
        self.gold -= item.cost
    }
    
    func levelUp() {
        self.lvl += 1
    }
}
