//
//  ProfileMap.swift
//  GlidSearchSwiftUI
//
//  Created by ahmad shiddiq on 23/12/20.
//  Copyright © 2020 ahmad shiddiq. All rights reserved.
//

import SwiftUI
import MapKit

struct ProfileMap: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<ProfileMap>) -> MKMapView {
        MKMapView()
    }
    func updateUIView(_ uiView: MKMapView,
                      context: UIViewRepresentableContext<ProfileMap>) {
        let coordinat = CLLocationCoordinate2D(
            latitude: -7.982677, longitude: 112.630888)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinat, span: span)
        uiView.setRegion(region, animated: true)
    }
}
struct ProfileMap_Previews: PreviewProvider {
    static var previews: some View {
        ProfileMap()
    }
}
