//
//  HomeView.swift
//  TwitterClone
//
//  Created by sutta on 07/12/22.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var vm: HomeViewModel = HomeViewModel()
    var body: some View {
        VStack {
            HomeHeaderView(style: .home)
            List(vm.tweetList, id: \.id){ tweet in
                TweetView(tweet: tweet)
            }.listStyle(.plain)
                .refreshable {
                    withAnimation {
                        vm.tweetList.shuffle()
                    }
                    print("Do your refresh work here")
                }
            Spacer()
        }.onAppear {
            vm.loadTweets()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
