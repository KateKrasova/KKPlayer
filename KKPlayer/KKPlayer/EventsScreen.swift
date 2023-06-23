//
//  EventsScreen.swift
//  KKPlayer
//
//  Created by Kate on 22.06.2023.
//

import SwiftUI

struct EventsScreen: View {
    @State var cityChoice = "Все города"

    var body: some View {
        NavigationView {
            VStack {
                Menu {
                    Button {
                        cityChoice = "Москва"
                    } label: {
                        Text("Москва")
                    }

                    Button {
                        cityChoice = "Санкт-Петербург"
                    } label: {
                        Text("Санкт-Петербург")
                    }

                    Button {
                        cityChoice = "Новосибирск"
                    } label: {
                        Text("Новосибирск")
                    }

                    Button {
                        cityChoice = "Сочи"
                    } label: {
                        Text("Сочи")
                    }

                } label: {
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 30)
                            .padding(.all, 5)
                        Text(cityChoice)
                        Spacer()
                        Button {
                            //код
                        } label: {
                            Image(systemName: "chevron.down")
                        }
                        .padding(.all, 5)

                    }
                    .foregroundColor(.black)
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 7))
                    .padding()
                }
                Spacer()
            }

            .navigationTitle("События")
        }
    }
}

struct EventsScreen_Previews: PreviewProvider {
    static var previews: some View {
        EventsScreen()
    }
}
