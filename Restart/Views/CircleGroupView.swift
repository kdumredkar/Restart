//
//  CircleGroupView.swift
//  Restart
//
//  Created by Khiraj Umredkar on 08/01/24.
//

import Foundation
import SwiftUI

struct CircleGroupView: View {
    @State var shapeColor: Color
    @State var shapeOpacity: Double
    @State private var isAnimating: Bool = false
    var body: some View {
        ZStack {
            
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
            
        }//: ZSTACK
        .blur(radius: isAnimating ? 0 : 10)
        .opacity(isAnimating ? 1 : 0)
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.easeOut(duration: 1), value: isAnimating)
        .onAppear(perform: {
            isAnimating = true
        })
    }
}

#Preview {
    ZStack {
        Color("ColorBlue")
            .ignoresSafeArea()
        CircleGroupView(shapeColor: .white, shapeOpacity: 0.2)
    }
}
