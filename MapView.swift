//
//  MapView.swift
//  Logger
//
//  Created by Giovanni Cioffi on 3/25/24.
//
import SwiftUI
import MapKit

struct MapView: View {
    
    let location: TreeLocation
    @State private var region = MKCoordinateRegion()
    private var place: TreePlace
    
    init(location: TreeLocation) {
        self.location = location
        self.place = TreePlace(location: location)
    }
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: [place]) { place in
            MapMarker(coordinate: place.location)
        }
        .onAppear {
            withAnimation {
                region.center = place.location
                region.span = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
            }
        }
    }
}
        
struct TreePlace: Identifiable {
    let id: UUID
    let location: CLLocationCoordinate2D

    init(id: UUID = UUID(), location: TreeLocation) {
        self.id = id
        self.location = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
    }
}
