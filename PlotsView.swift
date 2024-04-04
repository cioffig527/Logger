//
//  PlotsView.swift
//  Logger
//
//  Created by Giovanni Cioffi on 3/28/24.
//

import SwiftUI
import MapKit

struct PlotsView: View {
    var body: some View {
        return NavigationView {
            VStack {
                NavigationLink(destination: ContentView(tree: Tree.preview)){
                    Map{
                        let plot = Plot(firstPointLatitude: 42.4199, firstPointLongitude: 76.4969, secondPointLatitude: 42.4200, secondPointLongitude: 76.4970, plotName: "Jeff")
                        plot.square
                            .foregroundStyle(.gray.opacity(0.4))
                        
                        Marker("", monogram: Text("FF"), coordinate: plot.center)
                            .foregroundStyle(.gray)
                        
                    }
                }
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
        }

    }
}

#Preview {
    PlotsView()
}
