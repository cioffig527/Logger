//
//  TreesProvider.swift
//  Logger
//
//  Created by Giovanni Cioffi on 3/28/24.
//

import Foundation
@MainActor
class TreesProvider: ObservableObject{
    @Published var trees: [Tree] = []
    private let client: TreeClient
    
    func fetchTrees() async throws {
        let latestTrees = try await client.returnTrees()
        self.trees = latestTrees
    }
    
    func location(for tree: Tree) async throws -> TreeLocation{
        return try await client.treeLocation()
    }
    
    init(client: TreeClient = TreeClient()){
        self.client = client
    }
}
