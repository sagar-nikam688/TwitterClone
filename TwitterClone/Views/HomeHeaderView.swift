//
//  HomeHeaderView.swift
//  TwitterClone
//
//  Created by sutta on 07/12/22.
//

import SwiftUI

enum HeaderStyle {
    case home
    case search
    case communities
    case notification
    case messages
}

struct HomeHeaderView: View {
    var style: HeaderStyle
    @State var searchText = ""
    var body: some View {
        HStack {
            Image("profile")
                .resizable()
                .frame(width: 32, height: 32)
            
            Spacer()
            if style == .home {
                Image("logo")
                    .resizable()
                    .frame(width: 30, height: 30)
                Spacer()
                Image(systemName: "wand.and.stars")
                    .resizable()
                    .frame(width: 28, height: 28)
            } else if style == .search {
                TextField("Search Twitter", text: $searchText)
                    .multilineTextAlignment(TextAlignment.center)
                    .textFieldStyle(.roundedBorder)
                Spacer()
                Image(systemName: "gearshape")
                    .resizable()
                    .frame(width: 28, height: 28)
            }
            
        }.padding([.leading, .trailing])
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView(style: .search)
    }
}
