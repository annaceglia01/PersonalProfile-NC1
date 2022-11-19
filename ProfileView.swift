//
//  ProfileView.swift
//  PersonalProfile
//
//  Created by Anna Ceglia on 18/11/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .top){
                Image("Copertina")
                    .resizable()
                    .frame(height: 130)
                
                Image("ImageProfile")
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .overlay(
                            Circle()
                                .stroke(.white, lineWidth: 6)
                        )
                    .frame(width: 130)
                    .padding(.top, 65)
                    
            }//ZStack
    
                Text("Anna Ceglia")
                .fontWeight(.semibold)
            
                
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
