//
//  User.swift
//  Cafe
//
//  Created by 민성홍 on 2022/02/08.
//

import Foundation

struct User {
    let userName: String
    let account: String

    static let shared = User(userName: "성홍", account: "sunghong32@naver.com")
}
