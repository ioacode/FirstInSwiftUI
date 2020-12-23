//
//  Profile.swift
//  GlidSearchSwiftUI
//
//  Created by ahmad shiddiq on 23/12/20.
//  Copyright © 2020 ahmad shiddiq. All rights reserved.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack {
            ProfileMap()
                .frame(height: UIScreen.main.bounds.height / 3)
                .edgesIgnoringSafeArea(.top)
            ProfileImage()
                .offset(y: -150)
                .padding(.bottom, -135)
            VStack(alignment: .center) {
                Text("Alun - alun Batu")
                    .font(.headline)
                    .foregroundColor(.blue)
                    .bold()
                HStack {
                    Text("Batu Park")
                    .font(.subheadline)
                    .bold()
                    Text("Malang Indonesia")
                    .font(.subheadline)
                }.padding()
            }
            Spacer()
        }
    }
}
struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
