//
//  HalfSheet.swift
//  PersonalProfile
//
//  Created by Anna Ceglia on 22/11/22.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .symbolRenderingMode(.hierarchical)
                        .foregroundColor(.secondary)
                        .imageScale(.large)
                }
            }
            .padding()
            
            HStack {
                VStack(alignment: .leading) {
                    Label("Send profile in a message", systemImage: "paperplane")
                        .padding(3)
                    
                    Label("Share via..", systemImage: "square.and.arrow.up")
                        .padding(3)
                    
                    Label("Contact info", systemImage: "menucard")
                        .padding(3)
                    
                    Label("About this profile", systemImage: "info.square")
                        .padding(3)
                    
                    Label("Settings", systemImage: "gearshape")
                }
                .padding(.horizontal)
                Spacer()
    
            }
            
            Spacer()
            
        }//VStack
        
    }//Body
    
}//Struct


struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}



