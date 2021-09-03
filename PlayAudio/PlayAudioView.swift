//
//  PlayAudioView.swift
//  PlayAudio
//
//  Created by Ikechukwu Onuorah on 02/09/2021.
//

import SwiftUI
import AVKit

struct PlayAudioView: View {
    var viewModel = PlayAudioViewModel()
    
    var body: some View {
        VideoPlayer(player: viewModel.playMusic()) {
            Text("New Song")
        }
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
    }
}

struct PlayAudioView_Previews: PreviewProvider {
    static var previews: some View {
        PlayAudioView()
    }
}
