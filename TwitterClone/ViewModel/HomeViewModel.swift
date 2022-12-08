//
//  HomeViewModel.swift
//  TwitterClone
//
//  Created by sutta on 08/12/22.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var tweetList: [TweetListResponse] = []
    
    init() {
        tweetList = []
    }
    
    func loadTweets() {
        tweetList = BundleJsonDecoder.decodeTweetListJson()
    }

}
