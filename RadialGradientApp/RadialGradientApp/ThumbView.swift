//
//  ThumbView.swift
//  RadialGradientApp
//
//  Created by Eric Callanan on 08/07/2023.
//

import SwiftUI

struct ThumbView: View {
    var body: some View {
        VStack {
            ZStack {
                // Color(red: 214/255, green: 232/255, blue: 248/255)
                Color(hue: 0.58, saturation: 0.17, brightness: 1.0)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .trailing) {
                    Circle()
                        .fill(
                            RadialGradient(colors: AppColors.rainbow,
                                           center: .center,
                                           startRadius: 20,
                                           endRadius: 195)
                        )
                        .frame(width: 400, height: 400)
                }
                
                .padding()
            }
        }
    }
}

struct ThumbView_Previews: PreviewProvider {
    static var previews: some View {
        ThumbView()
    }
}
