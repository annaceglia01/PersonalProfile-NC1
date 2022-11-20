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
                            .stroke(.white, lineWidth: 6)
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
            
            List {
                ForEach(viewModel.info) { info in
                    NavigationLink {
                        <#code#>
                    } label: {
                        <#code#>
                    }

                    
                }
            }
            
            
            Spacer()
            
        }//VStack
        .toolbar {
            ToolbarItemGroup (placement: .navigationBarTrailing) {
                Button("Edit") {
                    print("Edit tapped!")
                }
                
                Button("More") {
                    print("More tapped")
                }
            }//ToolbarItemGroup
            
        }//.toolbar
        
    }//Body
    
}//ProfileView

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
