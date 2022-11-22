//
//  DashboardView.swift
//  PersonalProfile
//
//  Created by Anna Ceglia on 18/11/22.
//

import SwiftUI

struct DashboardView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            NavigationLink {
                ProfileView()
            } label: {
                Text("Dashboard")
            }

        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
