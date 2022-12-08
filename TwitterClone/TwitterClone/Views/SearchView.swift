//
//  SearchView.swift
//  TwitterClone
//
//  Created by sutta on 08/12/22.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack {
            HomeHeaderView(style: .search)
            Spacer() 
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
