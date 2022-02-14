//
//  MenuSuggestionSectionView.swift
//  Cafe
//
//  Created by Joseph Cha on 2022/02/07.
//

import SwiftUI

struct MenuSuggestionSectionView: View {
    @Binding var coffeeMenu: [CoffeMenu]
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(User.shared.userName)님을 위한 추천메뉴")
                .font(.headline)
                .padding(.horizontal, 16)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(coffeeMenu) { menu in
                        MenuSuggestionItemView(coffeMenu: menu)
                    }
                }
                .padding(.horizontal, 16)
            }
        }
    }
}

struct MenuSuggestionItemView: View {
    let coffeMenu: CoffeMenu
    var body: some View {
        VStack {
            coffeMenu.image
                .resizable()
                .clipShape(Circle())
                .frame(width: 100.0, height: 100.0)
            Text(coffeMenu.name)
                .font(.caption)
        }
    }
}
