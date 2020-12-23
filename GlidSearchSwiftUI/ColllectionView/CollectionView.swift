//
//  CollectionView.swift
//  GlidSearchSwiftUI
//
//  Created by ahmad shiddiq on 23/12/20.
//  Copyright © 2020 ahmad shiddiq. All rights reserved.
//

import SwiftUI

struct CollectionView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(0..<CollectionViewCell.row) { i in
                    HStack {
                        ForEach(0..<CollectionViewCell.column) { j in
                            CollectionViewCell(row: i, Column: j)
                        }
                    }
                }
            }.navigationBarTitle("Collection View")
        }
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView()
    }
}
