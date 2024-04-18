//
//  PlotsView.swift
//  Logger
//
//  Created by Giovanni Cioffi on 3/28/24.
//

import SwiftUI
import MapKit

struct PlotsView: View {
    @State var selection: Set<String> = []
    var body: some View {
        NavigationView {
            VStack {
                Map{
                    ForEach(PlotClient().returnPlots()){ plot in
                        NavigationLink(destination: ProfileView()){ //edit
                            Group{
                                plot.square
                                    .foregroundStyle(.gray.opacity(0.4))
                                Marker("", monogram: Text("\(plot.plotName)"), coordinate: plot.center)
                                    .foregroundStyle(.gray)
                            }
                        }
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
