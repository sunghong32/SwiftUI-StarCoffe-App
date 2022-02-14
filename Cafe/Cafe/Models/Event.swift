//
//  Event.swift
//  Cafe
//
//  Created by 민성홍 on 2022/02/08.
//

import SwiftUI

struct Event: Identifiable {
    let id = UUID()
    let image: Image
    let title: String
    let description: String
}
