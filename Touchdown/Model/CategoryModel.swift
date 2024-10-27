//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Piyapong Ukoad on 22/9/2567 BE.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
