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
                        Label("One", systemImage: "star")
                    }
                    .tag("One")
                
                Text("Tab 2")
                    .tabItem {
                        Label("Two", systemImage: "circle")
                    }
                    .tag("Two")
                
                Text("Tab 3")
                    .tabItem {
                        Label("Three", systemImage: "circle")
                    }
                    .tag("Three")
                
                Text("Tab 4")
                    .tabItem {
                        Label("Four", systemImage: "circle")
                    }
                    .tag("Four")
                
                Text("Tab 5")
                    .tabItem {
                        Label("Five", systemImage: "circle")
                    }
                    .tag("Five")
                
            }//TabView
            
        }//Body
        
    }//View

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
