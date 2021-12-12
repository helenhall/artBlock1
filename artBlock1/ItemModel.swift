//
//  ItemModel.swift
//  artBlock1
//
//  Created by Helen Hall on 12/4/21.
//

import Foundation
//https://www.youtube.com/watch?v=SMt4_WUdKag
struct ItemModel: Identifiable {
    let title: String
    let isCompleted: Bool
    let id:String = UUID().uuidString
}
