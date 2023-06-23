//
//  ContentView.swift
//  KKPlayer
//
//  Created by Kate on 22.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ChannelsScreen()
                .tabItem {
                    Image(systemName: "radio")
                    Text("Радио")
                }

            PlaylistsScreen()
                .tabItem {
                    Image(systemName: "music.note.list")
                    Text("Плейлисты")
                }

            EventsScreen()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("События")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
