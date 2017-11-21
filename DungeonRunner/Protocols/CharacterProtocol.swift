//
//  CharacterProtocol.swift
//  DungeonRunner
//
//  Created by Zack Falgout on 11/21/17.
//  Copyright © 2017 Zack Falgout. All rights reserved.
//

import Foundation

protocol CharacterProtocol{
    func attack(enemy: Character)
    func healBy(amount: Int)
    func recoverManaBy(amount: Int)
}
