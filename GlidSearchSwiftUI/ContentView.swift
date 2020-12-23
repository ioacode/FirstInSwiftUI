//
//  ContentView.swift
//  GlidSearchSwiftUI
//
//  Created by ahmad shiddiq on 23/12/20.
//  Copyright © 2020 ahmad shiddiq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var index = 0
    var body: some View {
        VStack(spacing: 0){
            ZStack {
                if index == 0 {
                    CollectionView()
                } else if  index == 3 {
                    Profile()
                } else {
                    Search()
                }
            }
            .padding(.bottom, -35)
            CustomTabs(index: self.$index)
        }
        .background(Color.black.opacity(0.05).edgesIgnoringSafeArea(.top))
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
