//
//  PlaylistsScreen.swift
//  KKPlayer
//
//  Created by Kate on 22.06.2023.
//

import SwiftUI

struct PlaylistsScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button {
                        // код
                    } label: {
                        Image(systemName: "arrow.up.arrow.down")
                    }
                    .padding(.all, 6)
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 5.0))


                    Button {
                        // код
                    } label: {
                        Image(systemName: "checkmark")
                        Text("Подписки")

                    }
                    .padding(.all, 6)
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 5.0))

                    Spacer()
                }
                Spacer()
            }
            .padding()

            .navigationTitle("Плейлисты")
            .navigationBarItems(trailing: Button(action: {
                print("лупа нажата")
            }) {
                Image(systemName: "magnifyingglass")
            })
            .tint(.black)
        }
    }
}

struct PlaylistsScreen_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistsScreen()
    }
}
