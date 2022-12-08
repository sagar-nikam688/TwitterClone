//
//  TweetActionView.swift
//  TwitterClone
//
//  Created by sutta on 07/12/22.
//

import SwiftUI

struct TweetActionView: View {
    var tweet: TweetListResponse
    var body: some View {
        HStack {
            Image(systemName: "bubble.left")
            Spacer()
            
            Image(systemName: "arrow.clockwise")
            Spacer()
            
            HStack{
                Image(systemName: tweet.likeStatus ? "heart.fill" : "heart")
                    .foregroundColor(tweet.likeStatus ? .pink : .white)
                    .background()
                Text("\(tweet.tweetActivity.likes)").font(.footnote)
                
            }
            Spacer()
            
            Image(systemName: "square.and.arrow.up")
            Spacer()
        }.padding([.top, .bottom], 4)
    }
}

struct TweetActionView_Previews: PreviewProvider {
    static var previews: some View {
        let tweet = TweetListResponse(id: 1, message: "Test", source: "Test", name: "Test", date: "Test", account: "Test", hashtags: "Test", image: "image", tweetActivity: TweetActivity(retweetCount: 10, likes: 1, comment: 1), likeStatus: false)

        TweetActionView(tweet: tweet)
    }
}


struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 15))
    }
}
extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}
