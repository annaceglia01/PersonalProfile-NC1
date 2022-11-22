//
//  ProfileView.swift
//  PersonalProfile
//
//  Created by Anna Ceglia on 18/11/22.
//

import SwiftUI

struct ProfileView: View {
    @ObservedObject var viewModel = InfoViewModel()
    
    var body: some View {
        VStack {
            ZStack(alignment: .top){
                Image("Copertina")
                    .resizable()
                    .frame(height: 100)
                
                Image("ImageProfile")
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .overlay(
                        Circle()
                            .stroke(Color(.systemGray6), lineWidth: 6)
                    )
                    .frame(width: 130)
                    .padding(.top, 40)
                
            }//ZStack
            
            Text("Anna Ceglia")
                .fontWeight(.semibold)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua")
                .padding(.horizontal)
                .padding(.top, 1)
                .multilineTextAlignment(.center)
                .lineLimit(2)
            
            VStack {
                Form {
                    Section {
                        List {
                            ForEach(viewModel.info) { info in
                                NavigationLink {
                                    Text(info.name)
                                } label: {
                                    Text(info.name)
                                }
                                
                            }//ForEach
                            
                        }//Lista
                        
                    }//Section
                    
                    Section {
                        List {
                            ForEach(viewModel.info2) { info in
                                NavigationLink {
                                    Text(info.name)
                                } label: {
                                    Text(info.name)
                                }
                                
                            }//ForEach
                            
                        }//Lista2
                        
                    }//Section2
                    
                }//Form
                
            }//VStack
            
            Spacer()
            
        }//VStack
        .background(Color(uiColor: .systemGray6))
        .toolbar {
            ToolbarItemGroup (placement: .navigationBarTrailing) {
                Button("Edit") {
                    print("Edit tapped!")
                }
                
                Button {
                    print("Button pressed")
                } label: {
                    Image(systemName: "ellipsis.circle")
                }
                
            }//ToolbarItemGroup
            
        }//toolbar
        
    }//Body
    
}//ProfileView

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

