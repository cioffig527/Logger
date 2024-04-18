//
//  Tree+Preview.swift
//  Logger
//
//  Created by Giovanni Cioffi on 3/28/24.
//

import Foundation

extension Tree{
    static var preview: Tree{
        var tree = Tree(code: "2101", circumference: 15.0, species: "Red Maple", growthFactor: 5.0, longitude: 70, latitude: 42)
        tree.location = TreeLocation(latitude: 42, longitude: 70)
        return tree
    }
}
