//
//  CollectionViewCell.swift
//  GlidSearchSwiftUI
//
//  Created by ahmad shiddiq on 23/12/20.
//  Copyright © 2020 ahmad shiddiq. All rights reserved.
//

import SwiftUI

struct CollectionViewCell: View {
    static let column = 3
    static let row = 7
    let width = (UIScreen.main.bounds.width/3)-20
    var index = 0
    init(row: Int, Column: Int) {
        index = row+Column+(row*2)
    }
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8).frame(width: width, height: width).foregroundColor(.green)
            Text("\(index)").font(.largeTitle).foregroundColor(.white)
        }.onTapGesture {
            print("click : \(self.index)")
        }
    }
}
struct CollectionViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CollectionViewCell(row: 0, Column: 1)
    }
}
