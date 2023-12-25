//
//  HeaderModel.swift
//  Avocados
//
//  Created by Drashti on 21/12/23.
//

import SwiftUI

// MARK: - HEADER MODEL

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
