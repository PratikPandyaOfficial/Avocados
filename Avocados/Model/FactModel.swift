//
//  FactModel.swift
//  Avocados
//
//  Created by Drashti on 21/12/23.
//

import SwiftUI

// MARK: - Fact Model

struct Fact: Identifiable{
    var id = UUID()
    var image: String
    var content: String
}
