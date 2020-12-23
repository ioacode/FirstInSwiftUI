//
//  CustomTabs.swift
//  GlidSearchSwiftUI
//
//  Created by ahmad shiddiq on 23/12/20.
//  Copyright © 2020 ahmad shiddiq. All rights reserved.
//

import SwiftUI

struct CustomTabs: View {
    @Binding var index : Int
    var body: some View {
        HStack {
            Button(action: {
                self.index = 0
            }) {
                Image("icon_home")
            }
            .foregroundColor(Color.black.opacity(self.index == 0 ? 1 : 0.2))
            Spacer(minLength: 0)
            Button(action: {
                self.index = 1
            }) {
                Image("icon_search")
            }
            .foregroundColor(Color.black.opacity(self.index == 1 ? 1 : 0.2))
            Spacer(minLength: 0)
            Button(action: {
                
            }) {
                Image("icon_add").renderingMode(.original)
            }
            .offset(y: -16)
            Spacer(minLength: 0)
            Button(action: {
                self.index = 2
            }) {
                Image("icon_heart")
            }
            .foregroundColor(Color.black.opacity(self.index == 2 ? 1 : 0.2))
            Spacer(minLength: 0)
            Button(action: {
                self.index = 3
            }) {
                Image("icon_person")
            }
            .foregroundColor(Color.black.opacity(self.index == 3 ? 1 : 0.2))
        }
        .padding(.horizontal, 35)
        .padding(.top, 35)
        .background(Color.white)
        .clipShape(CShape())
    }
}
struct CShape : Shape {
    func path(in rect: CGRect) -> Path {
        return Path { path in
            path.move(to: CGPoint(x: 0, y: 35))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 35))
            path.addArc(center: CGPoint(x: rect.width/2, y: 35),
                        radius: 24,
                        startAngle: .zero,
                        endAngle: .init(degrees: 180),
                        clockwise: true)
        }
    }
}
