//
//  EventsScreen.swift
//  KKPlayer
//
//  Created by Kate on 22.06.2023.
//

import SwiftUI

struct EventsScreen: View {
    var body: some View {
        NavigationView {
            Text("Events")

            .navigationTitle("События")
        }
    }
}

struct EventsScreen_Previews: PreviewProvider {
    static var previews: some View {
        EventsScreen()
    }
}
