//
//  LoggerApp.swift
//  Logger
//
//  Created by Giovanni Cioffi on 3/25/24.
//

import SwiftUI
import FirebaseCore
import FirebaseDatabase

class AppDelegate: NSObject, UIApplicationDelegate {
  func application() -> Bool {
    print("Colors application is starting up. ApplicationDelegate didFinishLaunchingWithOptions.")
    FirebaseApp.configure()
    return true
  }
}

@main
struct LoggerApp: App {
    init() {
        //FirebaseApp.configure()
      }
    //var ref = Database.database(url: "https:logger-50335-default-rtdb.firebaseio.com/").reference()
    @StateObject var treesProvider = TreesProvider()
    //@UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            PlotsView()
        }
    }
}
