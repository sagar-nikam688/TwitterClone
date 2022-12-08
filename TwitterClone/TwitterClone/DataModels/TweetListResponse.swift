//
//  ContentView.swift
//  TwitterClone
//
//  Created by sutta on 07/12/22.
//

import Foundation

struct TweetListResponse: Decodable {
    let id: Int
    let message, source, name, date, account, hashtags, image: String
    let tweetActivity: TweetActivity
    let likeStatus: Bool
}

struct TweetActivity : Decodable {
    let retweetCount, likes, comment: Int
}
