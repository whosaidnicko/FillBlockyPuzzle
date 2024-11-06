//
//  SettingsView.swift
//  FillBlockyPuzzle
//
//  Created by Keko Koaef on 06/11/2024.
//

import SwiftUI
import StoreKit

struct SettingsView: View {
    @Environment(\.requestReview) var requestReview
    @EnvironmentObject private var rootViewManager: RootManagerClass
    var body: some View {
        VStack {
            HStack {
                Button {
                    withAnimation {
                        rootViewManager.viewPresentedNow = .menu
                    }
                } label: {
                    Image("backIm")
                }

                Spacer()
                
                Text("Settings")
                    .font(.custom("PixelifySans-SemiBold", size: 48))
                    .foregroundStyle(.white)
                
                Spacer()
                
                Image("backIm")
                    .opacity(0)
            }
            
            VStack(spacing: 15) {
               

                
                Button {
                    if let url = URL(string: "https://www.dropbox.com/scl/fi/152abktjmpem4bd5vxch3/Privacy-Policy-for-ninethirtyteen.papert?rlkey=9nq0zniozzx22i1j8c5ydvx7y&st=xr0490lp&dl=0") {
                        UIApplication.shared.open(url)
                    }
                } label: {
                    KnopkaView(text: "Privacy", size: 35)
                }

                Button {
                    requestReview()
                } label: {
                    KnopkaView(text: "Rate", size: 35)
                }
            }
            .padding(.top, 80)
            
            Spacer()
        }
        .padding()
    }
}
