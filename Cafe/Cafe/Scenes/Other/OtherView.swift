//
//  OtherView.swift
//  Cafe
//
//  Created by 민성홍 on 2022/02/09.
//

import SwiftUI

struct OtherView: View {
    init() {
        UITableView.appearance().backgroundColor = .systemBackground
    }

    var body: some View {
        NavigationView {
            List {
                ForEach(Menu.allCases) { section in
                    Section {
                        ForEach(section.menu, id: \.hashValue) { raw in
                            NavigationLink(raw, destination: Text("\(raw)"))
                        }
                    } header: {
                        Text(section.title)
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Other")
            .toolbar {
                NavigationLink {
                    SettingView()
                } label: {
                    Image(systemName: "gear")
                }
            }
        }
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
