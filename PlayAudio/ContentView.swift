//
//  ContentView.swift
//  PlayAudio
//
//  Created by Ikechukwu Onuorah on 02/09/2021.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = String()
    var isHidden: Bool {
        self.name == String()
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 40) {
                Spacer()
                
                TextField("Enter your name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Spacer()
                
                NavigationLink( destination: PlayAudioView()) {
                    Text("Next")
                        .padding()
                }
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(Capsule())
                .opacity(isHidden ? 0 : 1)
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(name: String())
    }
}
