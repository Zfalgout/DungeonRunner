//
//  EnemyProtocol.swift
//  DungeonRunner
//
//  Created by Zack Falgout on 11/21/17.
//  Copyright © 2017 Zack Falgout. All rights reserved.
//

import Foundation

protocol EnemyProtocol: CharacterProtocol {
    
    func dropLoot() -> [Item]
    func determineDropChance(_ chance: Int, cap: Int) -> Bool
    func generateItem() -> Item
}
