//
//  HomeView.swift
//  Cafe
//
//  Created by 민성홍 on 2022/02/08.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel()

    var body: some View {
        ScrollView(.vertical) {
            HomeHeaderView(isNeedToReload: $viewModel.isNeedToReload)

            MenuSuggestionSectionView(coffeeMenu: $viewModel.coffeeMenu)

            Spacer(minLength: 32)
            
            EventsSectionView(events: $viewModel.events)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
