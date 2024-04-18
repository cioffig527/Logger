//
//  LoggerApp.swift
//  Logger
//
//  Created by Giovanni Cioffi on 3/25/24.
//

import SwiftUI
import Firebase
import FirebaseCore
import FirebaseFirestore
import FirebaseDatabase

@main
struct LoggerApp: App {
    init() {
        FirebaseApp.configure()
      }
    var ref = Database.database(url: "https:logger-50335-default-rtdb.firebaseio.com/").reference()
    @StateObject var treesProvider = TreesProvider()
    let db = Firestore.firestore()
    var body: some Scene {
        WindowGroup {
            PlotsView()
        }
    }
}
