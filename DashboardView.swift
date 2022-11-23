//
//  DashboardView.swift
//  PersonalProfile
//
//  Created by Anna Ceglia on 18/11/22.
//

import SwiftUI

struct DashboardView: View {
    @State private var path = NavigationPath()
    @State var searchText = ""
    
    var body: some View {
        NavigationStack(path: $path) {
            Image("Homepage")
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarLeading){
                        NavigationLink {
                            ProfileView()
                            
                        } label: {
                            Image("Profile")
                                .resizable()
                                .clipShape(Circle())
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                        }
                        
                        ZStack {
                            Rectangle()
                                .foregroundColor(Color(.systemGroupedBackground))
                            HStack {
                                Image(systemName: "magnifyingglass")
                                TextField("Search ..", text: $searchText)
                            }//HStack
                            .foregroundColor(.gray)
                            .padding()
                            
                        }//ZStack
                        .frame(width: 250,height: 35)
                        .cornerRadius(13)
                        .padding()
                        
                    }
                    
                    ToolbarItemGroup (placement: .navigationBarTrailing) {
                        Button {
                            print("Edit tapped!")
                        } label: {
                            Image(systemName: "pencil")
                        }
                        
                    }//ToolbarItemGroup
                    
                }//toolbar
            
        }//NavigationStack
        
    }//Body
    
}//DashboardView

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}

