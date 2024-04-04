//
//  TreeClient.swift
//  Logger
//
//  Created by Giovanni Cioffi on 3/28/24.
//

import Foundation

actor TreeClient{
    //implement
    func returnTrees() -> [Tree]{
        var trees: [Tree] = []
            trees.append(Tree(code: "0920", circumference: 15, species: "Red Maple", growthFactor: 5.0, longitude: 76.4969, latitude: 42.4199))
            trees.append(Tree(code: "0921", circumference: 14, species: "Red Maple", growthFactor: 5.0, longitude: 76.4970, latitude: 42.4200))
            trees.append(Tree(code: "0922", circumference: 16, species: "Red Maple", growthFactor: 5.0, longitude: 76.4971, latitude: 42.4201))
            trees.append(Tree(code: "0923", circumference: 17, species: "Red Maple", growthFactor: 5.0, longitude: 76.4972, latitude: 42.4203))
        return trees
    }
    
    func treeLocation() async throws -> TreeLocation{
        //implement
        return TreeLocation(latitude: 42, longitude: 70)
    }
}
