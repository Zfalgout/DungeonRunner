//
//  Enemy.swift
//  DungeonRunner
//
//  Created by Zack Falgout on 11/21/17.
//  Copyright © 2017 Zack Falgout. All rights reserved.
//

import Foundation

enum Rarity {
    case common
    case uncommon
    case rare
    case elite
}

class Enemy: Character, EnemyProtocol{
    
    var rarity: Rarity
    
    init(health: Int, mana: Int, str: Int, dex: Int, vit: Int, wis: Int, lvl: Int, rarity: Rarity) {
        self.rarity = rarity
        super.init(health: health, mana: mana, str: str, dex: dex, vit: vit, wis: wis, lvl: lvl)
    }
    
    public func dropLoot() -> [Item] {
        //Set it as an array to have the ability to extend the functionality to drop more than one item later.
        var droppedLoot: [Item] = []
        
        switch rarity {
        case .common:
            //Have a 33% chance to drop something.
            let willDrop = determineDropChance(Int(arc4random()) % 100, cap: 33)
            
            if willDrop{
                droppedLoot.append(generateItem())
            }
        case .uncommon:
            //Have a 50% chance to drop something.
            let willDrop = determineDropChance(Int(arc4random()) % 100, cap: 50)
            
            if willDrop{
                droppedLoot.append(generateItem())
            }
        case .rare:
            //Have a 75% chance to drop something.
            let willDrop = determineDropChance(Int(arc4random()) % 100, cap: 75)
            
            if willDrop{
                droppedLoot.append(generateItem())
            }
        case .elite:
            //Have a 95% chance to drop something.
            let willDrop = determineDropChance(Int(arc4random()) % 100, cap: 95)
            
            if willDrop{
                droppedLoot.append(generateItem())
            }
        }
        
        return droppedLoot
    }
    
    internal func determineDropChance(_ chance: Int, cap: Int) -> Bool {
        if chance < cap {
            return true
        } else {
            return false
        }
    }
    
    func generateItem() -> Item {
        //Determine rarity
        let itemRarityChance = arc4random() % 100
        let itemRarity: Rarity
        
        if itemRarityChance >= 95 {
            itemRarity = .elite
        } else if itemRarityChance >= 75 {
            itemRarity = .rare
        } else if itemRarityChance >= 40 {
            itemRarity = .uncommon
        } else {
            itemRarity = .common
        }
        
        //TODO: Determine durability and cost mechanics
        
        return Item(rarity: itemRarity, durabilityMax: 100, cost: 50)
    }
}
