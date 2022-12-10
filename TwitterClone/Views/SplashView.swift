//
//  SplashView.swift
//  TwitterClone
//
//  Created by sutta on 09/12/22.
//

import SwiftUI

struct SplashView: View {
    @State private var animate: Bool = false
    @State private var showSplash: Bool = true
    var body: some View {
        ZStack {
            ZStack {
                if showSplash {
                    Image("logo")
                        .scaleEffect(animate ? 10 : 0.1)
                        .animation(Animation.easeInOut(duration: 0.7))
                } else {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        RootTabView()
                    }
                }
            }
        }.onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3, execute: {
                animate.toggle()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                    showSplash.toggle()
                })
            })
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
 
