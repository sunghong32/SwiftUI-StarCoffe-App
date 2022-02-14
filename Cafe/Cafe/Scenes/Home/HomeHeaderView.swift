//
//  SwiftUIView.swift
//  Cafe
//
//  Created by 민성홍 on 2022/02/08.
//

import SwiftUI

struct HomeHeaderView: View {
    @Binding var isNeedToReload: Bool
    var body: some View {
        VStack(spacing: 16) {
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("\(User.shared.userName)님~")
                    Text("반갑습니다!☕️")
                }
                .font(.largeTitle)
                .fixedSize(horizontal: false, vertical: true)

                Spacer()

                Button {
                    isNeedToReload = true
                } label: {
                    Image(systemName: "arrow.2.circlepath")
                }
            }

            HStack {
                Button {

                } label: {
                    Image(systemName: "mail")
                        .foregroundColor(.secondary)

                    Text("What's New")
                        .foregroundColor(.primary)
                        .font(.system(size: 16, weight: .semibold, design: .default))
                }

                Button {

                } label: {
                    Image(systemName: "ticket")
                        .foregroundColor(.secondary)

                    Text("Coupon")
                        .foregroundColor(.primary)
                        .font(.system(size: 16, weight: .semibold, design: .default))
                }

                Spacer()

                Button {

                } label: {
                    Image(systemName: "bell")
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding(16)
    }
}

