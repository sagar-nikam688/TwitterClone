//
//  TweetOwnerDetailsView.swift
//  TwitterClone
//
//  Created by sutta on 07/12/22.
//

import SwiftUI

struct TweetOwnerDetailsView: View {
    var tweet: TweetListResponse

    var body: some View {
        HStack {
            Text("\(tweet.name) ")
                .bold()
            +
            Text("\(tweet.account) ")
                .font(Font.system(size: 15))
                .foregroundColor(.gray)
            +
            Text("• ")
                .font(Font.system(size: 15))
                .foregroundColor(.gray)
            +
            Text("1m")
                .font(Font.system(size: 15))
                .foregroundColor(.gray)
            Spacer()
        }
    }
}

struct TweetOwnerDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let tweet = TweetListResponse(id: 1, message: "Test", source: "Test", name: "Test", date: "Test", account: "Test", hashtags: "Test", image: "image", tweetActivity: TweetActivity(retweetCount: 10, likes: 1, comment: 1), likeStatus: false)

        TweetOwnerDetailsView(tweet: tweet)
    }
}
