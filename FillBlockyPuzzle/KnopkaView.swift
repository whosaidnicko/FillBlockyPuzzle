//
//  KnopkaView.swift
//  FillBlockyPuzzle
//
//  Created by Keko Koaef on 06/11/2024.
//

import SwiftUI


struct KnopkaView: View {
    let text: String
    @State var size: CGFloat?
    var body: some View {
        RoundedRectangle(cornerRadius: 50)
            .fill(Color.init(hex: "#EC5393"))
            .overlay {
                RoundedRectangle(cornerRadius: 50)
                    .stroke(Color.init(hex: "#AE2B5D")
                            ,lineWidth: 3.82)
                
                Text(text)
                    .font(.custom("LondrinaSolid-Regular", size: size == nil ? 52 : size!))
                    .foregroundStyle(.white)
            }
            .frame(width: 271, height: 77)
        
//
    }
}
