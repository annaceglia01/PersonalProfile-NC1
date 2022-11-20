//
//  InfoProfile.swift
//  PersonalProfile
//
//  Created by Anna Ceglia on 19/11/22.
//

import Foundation

class InfoViewModel: ObservableObject {
    @Published var info: [InfoModel] = Bundle.main.decode([InfoModel].self, from: "InfoData.json")
    
    @Published var info2: [InfoModel] = Bundle.main.decode([InfoModel].self, from: "InfoData2.json")
}
