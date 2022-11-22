//
//  ContentView.swift
//  PersonalProfile
//
//  Created by Anna Ceglia on 18/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = "One"
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color("TabColor"))
    }
    
    var body: some View {
        
            TabView(selection: $selectedTab) {
                DashboardView()
                    .tabItem {
                        Label("Dashboard", systemImage: "house")
                    }
                    .tag("Dashboard")
                
                Text("Tab 2")
                    .tabItem {
                        Label("My Network", systemImage: "person.2")
                    }
                    .tag("My Network")
                
                Text("Tab 3")
                    .tabItem {
                        Label("Post", systemImage: "plus.app")
                    }
                    .tag("Post")
                
                Text("Tab 4")
                    .tabItem {
                        Label("Notifications", systemImage: "bell")
                    }
                    .tag("Notifictions")
                
                Text("Tab 5")
                    .tabItem {
                        Label("Jobs", systemImage: "briefcase")
                    }
                    .tag("Jobs")
                
            }//TabView
            
        }//Body
        
    }//View

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
