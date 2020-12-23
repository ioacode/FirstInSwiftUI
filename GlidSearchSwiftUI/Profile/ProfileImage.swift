//
//  ProfileImage.swift
//  GlidSearchSwiftUI
//
//  Created by ahmad shiddiq on 23/12/20.
//  Copyright © 2020 ahmad shiddiq. All rights reserved.
//

import SwiftUI

struct ProfileImage: View {
    let width = UIScreen.main.bounds.width - 150
    var body: some View {
        Image("image_batu")
            .resizable()
            .frame(width: width, height: width, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 2))
            .shadow(radius: 10)
    }
}

struct ProfileImage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImage()
    }
}
