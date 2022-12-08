//
//  RootTabView.swift
//  TwitterClone
//
//  Created by sutta on 07/12/22.
//

import SwiftUI

struct RootTabView: View {
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                        .frame(width: 20, height: 20)
                }.tag(0)

            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                        .frame(width: 20, height: 20)

                }.tag(1)
            
            Text("")
                .tabItem {
                    Image(systemName: "person.2.fill")
                        .frame(width: 20, height: 20)

                }.tag(2)

            Text("")
                .tabItem {
                    Image(systemName: "bell.fill")
                        .frame(width: 20, height: 20)

                }.tag(3)

            Text("")
                .tabItem {
                    Image(systemName: "envelope.fill")
                        .frame(width: 20, height: 20)

                }.tag(4)
        }.accentColor(colorScheme == .dark ? Color.white : Color.blue)
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
