//
//  Character.swift
//  DungeonRunner
//
//  Created by Zack Falgout on 11/21/17.
//  Copyright © 2017 Zack Falgout. All rights reserved.
//

import Foundation

class Character {
    var health: Int
    var mana: Int
    var str: Int
    var dex: Int
    var vit: Int
    var wis: Int
    
    init(health: Int, mana: Int, str: Int, dex: Int, vit: Int, wis: Int) {
        self.health = health
        self.mana = mana
        self.str = str
        self.dex = dex
        self.vit = vit
        self.wis = wis
    }
}
