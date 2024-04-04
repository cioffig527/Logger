//
//  TreeRow.swift
//  Logger
//
//  Created by Giovanni Cioffi on 3/28/24.
//

import SwiftUI

struct TreeRow: View {
    var tree: Tree
    var body: some View {
        HStack {
            Image(systemName: "tree")
                .foregroundColor(.green)
            Text(tree.id)
                .font(.title2)
            if (tree.logged==true){
                VStack(alignment: .leading) {
                    Text("Species: \(tree.species!)")
                    let formatted = String(format: "%.1f", tree.circumference!)
                    Text("Circumference: \(formatted)")
                }
                VStack(alignment: .leading) {
                    let formatted2 = String(format: "%.1f", tree.growthFactor!)
                    Text("Growth Factor: \(formatted2)")
                    Text("Age: \(tree.age!)")
                }
            }
        }
        //.padding(.vertical, 8)
    }
}

#Preview {
    TreeRow(tree: Tree.preview)
}
