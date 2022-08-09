//
//  Draw.swift
//  Lotto
//
//  Created by Dusan Orescanin on 10/08/2022.
//

import Foundation

// MARK : DRAW

struct Draw { /// Tirages
    let count: Int /// Number of draw (tirages)
    let range: ClosedRange<Int> /// Draw range
    let result: Set<Int> /// Array  & set<Int> guarantee the unicity of each element
    
    // Initialisation
    init?(count: Int, range: ClosedRange<Int>) {
        guard count <= range.count else { return nil }
        self.count = count
        self.range = range
        var result: Set<Int> = []
        while result.count < count {
            result.insert(Int.random(in: range)) /// Random result /// Int.random : random wdraw and insert with intermediate result but if if the intemediate result contains the random result do nothing
        }
        self.result = result
    }
}
