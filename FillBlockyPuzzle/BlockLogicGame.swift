//
//  BlockLogicGame.swift
//  FillBlockyPuzzle
//
//  Created by Keko Koaef on 06/11/2024.
//

import SwiftUI

struct BlockLogicGame: View {
    @State var showImage: Bool = true
    @State var animation: Bool = false
    @EnvironmentObject private var navigationManager: RootManagerClass
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button {
                        withAnimation {
                            navigationManager.viewPresentedNow = .menu
                        }
                    } label: {
                        Image("backIm")
                    }
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                ZStack {
                    WKWebViewRepresentable(url: URL(string: "https://plays.org/game/blocky/")!, onLoadCompletion: {
                        showImage = false
                        //            loadingFinished = true
                    })
                    
                    Image("puzllM")
                        .scaleEffect(animation ? 1 : 0.8)
                        .animation(Animation.bouncy(duration: 0.2).repeatForever(), value: animation )
                        .opacity(showImage ? 1 : 0)
                        .onAppear() {
                            animation = true
                        }
                }
            }
            .padding(.vertical)
        }
    }
}
