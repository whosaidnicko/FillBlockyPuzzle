//
//  ZagrujaemView.swift
//  FillBlockyPuzzle
//
//  Created by Keko Koaef on 06/11/2024.
//

import SwiftUI

struct ZagrujaemView: View {
    @EnvironmentObject private var rootManager: RootManagerClass
    @State var loadingProcess: Bool = false
    var body: some View {
        ZStack {
            
            VStack(spacing: 1) {
                Text("LOADING...")
                    .font(.custom("LondrinaSolid-Regular", size: 50))
                    .foregroundStyle(.white)
                
                Text("LOADING...")
                    .font(.custom("LondrinaSolid-Regular", size: 50))
                    .foregroundStyle(.white.opacity(0.32))
                    .scaleEffect(x: -1, y: 1)                              .rotationEffect(.degrees(180))
            }
            VStack {
                Spacer()
                HStack(spacing: 6) {
                    RoundedRectangle(cornerRadius: 100)
                        .fill(Color.init(hex: "#FFFFFF").opacity(0.3))
                        .overlay(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 100)
                                .fill(Color.init(hex: "#E89142"))
                                .frame(width: 57 * (loadingProcess ? 1 : 0))
                                .animation(Animation.linear(duration: 0.4), value: loadingProcess)
                        }
                        .frame(width: 57, height: 25)
                    
                    RoundedRectangle(cornerRadius: 100)
                        .fill(Color.init(hex: "#FFFFFF").opacity(0.3))
                        .overlay(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 100)
                                .fill(Color.init(hex: "#EC5393"))
                                .frame(width: 57 * (loadingProcess ? 1 : 0))
                                .animation(Animation.linear(duration: 0.4).delay(0.4), value: loadingProcess)
                        }
                        .frame(width: 57, height: 25)
                    
                    RoundedRectangle(cornerRadius: 100)
                        .fill(Color.init(hex: "#FFFFFF").opacity(0.3))
                        .overlay(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 100)
                                .fill(Color.init(hex: "#E89142"))
                                .frame(width: 57 * (loadingProcess ? 1 : 0))
                                .animation(Animation.linear(duration: 0.4).delay(0.8), value: loadingProcess)
                        }
                        .frame(width: 57, height: 25)
                    
                    RoundedRectangle(cornerRadius: 100)
                        .fill(Color.init(hex: "#FFFFFF").opacity(0.3))
                        .overlay(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 100)
                                .fill(Color.init(hex: "#EC5393"))
                                .frame(width: 57 * (loadingProcess ? 1 : 0))
                                .animation(Animation.linear(duration: 0.4).delay(1.2), value: loadingProcess)
                        }
                        .frame(width: 57, height: 25)
                    
                    RoundedRectangle(cornerRadius: 100)
                        .fill(Color.init(hex: "#FFFFFF").opacity(0.3))
                        .overlay(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 100)
                                .fill(Color.init(hex: "#E89142"))
                                .frame(width: 57 * (loadingProcess ? 1 : 0))
                                .animation(Animation.linear(duration: 0.4).delay(1.6), value: loadingProcess)
                        }
                        .frame(width: 57, height: 25)
                    
                }
            }
            .padding(.vertical)
        }
            .onAppear() {
                loadingProcess = true
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        self.rootManager.viewPresentedNow = .menu
                    }
                }
            }
        
    }
}
