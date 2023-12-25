//
//  RipeningModel.swift
//  Avocados
//
//  Created by Drashti on 22/12/23.
//

import SwiftUI

// MARK: - Ripening Model
struct Ripening: Identifiable{
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripening: String
    var instruction: String
}
