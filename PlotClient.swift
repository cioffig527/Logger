//
//  PlotClient.swift
//  Logger
//
//  Created by Giovanni Cioffi on 4/17/24.
//
import Foundation
import Firebase
import FirebaseCore
import FirebaseFirestore
import FirebaseDatabase

actor PlotClient{
    func returnPlots() -> [Plot]{
        var plots: [Plot] = []
        let db = Firestore.firestore()
        let plotsCollection = db.collection("plot")
        plotsCollection.getDocuments{(querySnapshot, error) in
            if let error = error{
                print("Error")
            } else{
                for document in querySnapshot!.documents{
                    let plotData = document.data()
                    let name = plotData["id"] as! String
                    let fplat = plotData["firstPointLatitude"] as! Double
                    let fplong = plotData["firstPointLongitude"] as! Double
                    let splat = plotData["secondPointLatitude"] as! Double
                    let splong = plotData["secondPointLongitude"] as! Double
                    let code = plotData["landId"] as! String
                    plots.append(Plot(code: code, firstPointLatitude: fplat, firstPointLongitude: fplong, secondPointLatitude: splat, secondPointLongitude: splong, plotName: name))
                }
            }
        }
        return plots
    }
    
    func treeLocation() async throws -> TreeLocation{
        //implement
        return TreeLocation(latitude: 42, longitude: 70)
    }
}
