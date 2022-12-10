//
//  TweetView.swift
//  TwitterClone
//
//  Created by sutta on 07/12/22.
//

import SwiftUI

struct TweetView: View {
    var tweet: TweetListResponse
    var body: some View {
        HStack(alignment: .top) {
            Image("profile")
                .resizable()
                .frame(width: 40, height: 40)
            Spacer()
            VStack(alignment: .leading, spacing: 4) {
                TweetOwnerDetailsView(tweet: tweet)
                
                Text(tweet.message)
                    .titleStyle()

                Text(tweet.hashtags)
                    .titleStyle()
                    .foregroundColor(.blue)
                
                Image(tweet.image)
                    .resizable()
                    .frame(maxHeight: 220)
                    .cornerRadius(10)
                    .padding([.top, .bottom], 4)
                
                TweetActionView(tweet: tweet)
            }
            
        }.padding(6)
    }
}

struct TweetView_Previews: PreviewProvider {
    static var previews: some View {
        let tweet = TweetListResponse(id: 1, message: "Test", source: "Test", name: "Test", date: "Test", account: "Test", hashtags: "Test", image: "image", tweetActivity: TweetActivity(retweetCount: 10, likes: 1, comment: 1), likeStatus: false)
        TweetView(tweet: tweet)
    }
}
