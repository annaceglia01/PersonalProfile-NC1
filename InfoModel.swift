//
//  InfoModel.swift
//  PersonalProfile
//
//  Created by Anna Ceglia on 20/11/22.
//

import Foundation

struct InfoModel: Codable, Hashable, Identifiable {
    var id = UUID().uuidString
    
    var name: String
}
