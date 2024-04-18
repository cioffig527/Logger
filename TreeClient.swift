//
//  TreeClient.swift
//  Logger
//
//  Created by Giovanni Cioffi on 3/28/24.
//

import Foundation
import Firebase
import FirebaseCore
import FirebaseFirestore
import FirebaseDatabase

actor TreeClient{
    //implement
    func returnTrees() -> [Tree]{
        var trees: [Tree] = []
        let db = Firestore.firestore()
        let treesCollection = db.collection("tree")
        treesCollection.getDocuments{(querySnapshot, error) in
            if let error = error{
                print("Error")
            } else{
                for document in querySnapshot!.documents{
                    let treeData = document.data()
                    if let name = treeData["name"] as? String{
                        
                    }
                }
            }
        }
        return trees
    }
    
    func treeLocation() async throws -> TreeLocation{
        //implement
        return TreeLocation(latitude: 42, longitude: 70)
    }
}
