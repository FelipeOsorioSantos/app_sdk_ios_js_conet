//
//  ContentView.swift
//  app_conet_sdk_js_ios
//
//  Created by stage-macbook on 17/10/24.
//

import SwiftUI
import conet_sdk_js_ios

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear(){
            Task {
                let sentence = ""
                let analysisResult = await ConetClass.shared.analyze()
                print(analysisResult)
            }
        }
    }
}

#Preview {
    ContentView()
}
