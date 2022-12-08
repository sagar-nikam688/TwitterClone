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
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 30, height: 30)
            
            Spacer()
            if style == .home {
                Image("logo")
                    .resizable()
                    .frame(width: 30, height: 30)
            } else if style == .search {
                TextField("Search Twitter", text: $searchText)
                    .multilineTextAlignment(TextAlignment.center)
                    .textFieldStyle(.roundedBorder)
            }
            Spacer()
            
            Image(systemName: "wand.and.stars")
                .resizable()
                .frame(width: 30, height: 30)
        }.padding([.leading, .trailing])
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView(style: .search)
    }
}
