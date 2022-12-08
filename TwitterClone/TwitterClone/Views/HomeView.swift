//
//  HomeView.swift
//  TwitterClone
//
//  Created by sutta on 07/12/22.
//

import SwiftUI

struct HomeView: View {
    @State private var tweetList = BundleJsonDecoder.decodeTweetListJson()

    var body: some View {
        VStack {
            HomeHeaderView(style: .home)
            List(tweetList, id: \.id){ tweet in
                TweetView(tweet: tweet)
            }.listStyle(.plain)
                .refreshable {
                    withAnimation {
                        tweetList.shuffle()
                    }
                    print("Do your refresh work here")
                }
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
