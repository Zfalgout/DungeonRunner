//
//  PlayerProtocol.swift
//  DungeonRunner
//
//  Created by Zack Falgout on 11/21/17.
//  Copyright © 2017 Zack Falgout. All rights reserved.
//

import Foundation

protocol PlayerProtocol{
    
    func sell(_ item: Item)
    func buy(_ item: Item)
    func levelUp()
    
}
