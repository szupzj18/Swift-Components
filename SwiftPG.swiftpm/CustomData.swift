//
//  CustomData.swift
//  SwiftPG
//
//  Created by Chris on 2024/8/16.
//

import Foundation

struct CustomData {
    let id = UUID()
    let title: String
}

struct CustomViewModel {
    var items : [CustomData] = [
        .init(title: "One"),
        .init(title: "Two"),
        .init(title: "Three"),
        .init(title: "Four"),
        .init(title: "Five")
    ]
}
