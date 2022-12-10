//
//  PageView.swift
//  TwitterClone
//
//  Created by sutta on 09/12/22.
//

import SwiftUI

struct PageView: View {
    @State private var selectedTab = 1
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                tabButton(title: "For you", tag: 1)
                tabButton(title: "Trending", tag: 2)
                tabButton(title: "News", tag: 3)
                tabButton(title: "Sports", tag: 4)

            }
            .padding(.top)
            .font(.headline)
            
            TabView(selection: $selectedTab) {
                Text("Test").tag(1)
                Text("Test").tag(2)
                Text("").tag(3)
                Text("Test").tag(4)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//            .background(.gray.opacity(0.5))
        }
    }
    
    func tabButton(title: String, tag: Int) -> some View {
        VStack {
            Button(title) { withAnimation { selectedTab = tag } }
            .frame(maxWidth: .infinity)
            .foregroundColor(selectedTab == tag ? .primary : .secondary)
            withAnimation {
                Color(selectedTab == tag ? .blue : .clear)
                    .frame(height: 4)
                    .padding(.horizontal)
            }
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
    }
}
