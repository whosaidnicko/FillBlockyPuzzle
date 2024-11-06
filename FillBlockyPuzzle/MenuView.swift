//
//  MenuView.swift
//  FillBlockyPuzzle
//
//  Created by Keko Koaef on 06/11/2024.
//

import SwiftUI

struct MenuView: View {
    @EnvironmentObject private var rootManager: RootManagerClass
    @State var blocksAnim: Bool = false
    var body: some View {
        VStack {
            HStack {
                Button {
                    withAnimation {
                        rootManager.viewPresentedNow = .settings
                    }
                } label: {
                    Image("settingMg")
                }
                
                Spacer()
            }
            Spacer()
            
            Image("puzllM")
                .scaleEffect(blocksAnim ? 0.8 : 0.6)
                .rotationEffect(.degrees(blocksAnim ? 360 : 0))
                .animation(Animation.linear(duration: 3).repeatForever(), value: blocksAnim)
            
            Spacer()
            
            Button {
                withAnimation {
                    self.rootManager.viewPresentedNow = .game
                }
            } label: {
                KnopkaView(text: "PLAY")
            }
        }
        .padding()
        .onAppear() {
            blocksAnim = true
        }
    }
}
