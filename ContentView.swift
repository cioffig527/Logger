//
//  ContentView.swift
//  Logger
//
//  Created by Giovanni Cioffi on 3/25/24.
//
import SwiftUI

struct ContentView: View {
    var tree: Tree
    @EnvironmentObject private var treesProvider: TreesProvider
    @State private var location: TreeLocation? = nil
    @State var selection: Set<String> = []
    @State private var searchtext = ""
    var body: some View {
        NavigationView{
            VStack{
                if let location = self.location{
                    MapView(location: location)
                        .ignoresSafeArea(.container)
                }
                
                /*
                 NavigationView{
                 List(selection: $selection){
                 ForEach(treesProvider.trees){ tree in
                 NavigationLink(destination: TreeEditView()){
                 TreeRow(tree: tree)
                 }
                 }
                 }
                 }
                 */
                HStack(spacing: 125){
                    Image(systemName: "house")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 30))
                    NavigationLink(destination: ProfileView()){
                        Image(systemName: "person")
                            .font(.system(size: 30))
                            .foregroundColor(.black)
                    }
                }
            }
            .task {
                if self.location == nil{
                    if let treeLocation = tree.location{
                        self.location = treeLocation
                    } else{
                        self.location = try? await treesProvider.location(for: Tree.preview)
                    }
                }
            }
        }
    }
}









#Preview {
    ContentView(tree: Tree.preview)
}
