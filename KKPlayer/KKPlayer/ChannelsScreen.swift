//
//  ChannelsScreen.swift
//  KKPlayer
//
//  Created by Kate on 22.06.2023.
//

import SwiftUI

struct Item: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
}

struct ItemView: View {
    let item: Item

    var body: some View {

        GeometryReader { reader in

            let fontSize = min(reader.size.width * 0.15, 28)
            let imageWidth: CGFloat = min(50, reader.size.width * 0.6)

            VStack(spacing: 30) {
                Image(systemName: "\(item.imageName)")
                    .resizable()
                    .scaledToFit()
                    .frame(width: imageWidth)

                Text("\(item.name)")
                    .font(.system(size: fontSize))
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
            }
            .frame(width: reader.size.width, height: reader.size.height)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .frame(height: 170)
    }
}

struct ChannelsScreen: View {

    let items = [
        Item(name: "Рекорд", imageName: "heart"),
        Item(name: "Шашлыки", imageName: "bird"),
        Item(name: "80-ые", imageName: "flame"),
        Item(name: "Танцы шманцы", imageName: "car.rear.waves.up"),
        Item(name: "Дискотека", imageName: "lizard"),
        Item(name: "Чилл", imageName: "camera.macro"),
        Item(name: "Сидим дома", imageName: "bubbles.and.sparkles"),
        Item(name: "Для уборки", imageName: "bird"),
        Item(name: "Утро", imageName: "flame"),
        Item(name: "Хиты", imageName: "bubbles.and.sparkles"),
        Item(name: "Хаус", imageName: "camera.macro"),
        Item(name: "Диско", imageName: "bird"),
        Item(name: "Миксы", imageName: "car.rear.waves.up"),
        Item(name: "Русский реп", imageName: "lizard")
    ]

    // не могу подставить почему-то, разобраться
    let spacing: CGFloat = 10
    @State private var numberOfRows = 3

    let columns = Array(
        repeating: GridItem(.flexible(), spacing: 10),
        count: 3)


    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    VStack {
                        HStack {

                            Button {
                                // код
                            } label: {
                                Image(systemName: "arrow.up.arrow.down")
                            }
                            .padding(.all, 6)
                            .background(Color.black)
                            .clipShape(RoundedRectangle(cornerRadius: 5.0))


                            Button {
                                // код
                            } label: {
                                Image(systemName: "heart")
                                Text("Избранное")

                            }
                            .padding(.all, 6)
                            .background(Color.black)
                            .clipShape(RoundedRectangle(cornerRadius: 5.0))

                            Button {
                                // код
                            } label: {
                                Image(systemName: "slider.horizontal.3")
                                    .padding(.all, 6)
                                    .background(Color.black)
                                    .clipShape(RoundedRectangle(cornerRadius: 5.0))
                            }
                            Spacer()
                        }
                        .padding()

                        LazyVGrid(columns: columns, spacing: spacing) {
                            ForEach(items) { item in
                                ItemView(item: item)
                            }
                        }
                        .padding()
                        .offset(y: -20)
                    }
                }
            }
            .background(Color.gray)

                .navigationTitle("Радиоканалы")

                .navigationBarItems(trailing:
                        Button(action: {
                    print("лупа нажата")
                }) {
                    Image(systemName: "magnifyingglass")
                })
                .tint(.white)
        }
    }
}

struct ChannelsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChannelsScreen()
    }
}
