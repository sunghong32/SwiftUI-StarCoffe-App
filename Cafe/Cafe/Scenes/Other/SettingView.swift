//
//  SettingView.swift
//  Cafe
//
//  Created by 민성홍 on 2022/02/09.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        List {
            Section() {
                SettingUserInfoSectionView()
            }

            Button {

            } label: {
                Text("회원 정보 수정")
                    .tint(.black)
            }

            Button {

            } label: {
                Text("회원 탈퇴")
                    .tint(.black)
            }
        }
        .navigationTitle("설정")
        .listStyle(GroupedListStyle())
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SettingUserInfoSectionView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(User.shared.userName)
                    .font(.title)
                Text(User.shared.account)
                    .font(.caption)
            }

            Spacer()

            Button {

            } label: {
                Text("로그아웃")
                    .tint(.green)
                    .font(.system(size: 14, weight: .bold, design: .default))
            }
            .padding(8)
            .overlay(
                Capsule()
                    .stroke(Color.green)
            )
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
