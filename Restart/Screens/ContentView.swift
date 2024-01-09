//
//  ContentView.swift
//  Restart
//
//  Created by Khiraj Umredkar on 08/01/24.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onbording") var isOnbordingViewActiv: Bool = true
    var body: some View {
        ZStack {
            
            if isOnbordingViewActiv {
                OnbordingView()
            } else {
                HomeView()
            }
        }
    }
}

#Preview {
    ContentView()
}
