//
//  ProfileView.swift
//  PersonalProfile
//
//  Created by Anna Ceglia on 18/11/22.
//

import SwiftUI

struct ProfileView: View {
    @ObservedObject var viewModel = InfoViewModel()
    @State var sheetIsPresented : Bool = false
    
    var body: some View {
        ScrollView{
            VStack {
                ZStack(alignment: .top){
                    Image("Copertina")
                        .resizable()
                        .frame(height: 100)
                    
                    Image("Profile")
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
                
                Text("Studentessa di Scienze Biologiche ed Apple Developer Academy")
                    .padding(.horizontal)
                    .padding(.top, 1)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                Spacer()
                Text("Apple Developer Academy @Unina Fderico II")
                    .font(.system(size: 15))
                
                    List {
                        Section {
                            ForEach(viewModel.info) { info in
                                NavigationLink {
                                    Text(info.name)
                                } label: {
                                    Text(info.name)
                                }
                                
                            }//ForEach
                            
                        }//Section
                        
                        Section {
                            ForEach(viewModel.info2) { info in
                                NavigationLink {
                                    Text(info.name)
                                } label: {
                                    Text(info.name)
                                }
                                
                            }//ForEach2
                            
                        }//Section2
                        
                    }//List
                    .listStyle(.insetGrouped)
                    .scrollDisabled(true)
                    .scaledToFill()
                
            }//VStack
            
        }//ScrollView
        .background(Color(.systemGroupedBackground))
        .toolbar {
            ToolbarItemGroup (placement: .navigationBarTrailing) {
                Button("Edit") {
                    print("Edit tapped!")
                }
                
                Button {
                    self.sheetIsPresented.toggle()
                } label: {
                    Image(systemName: "ellipsis.circle")
                }
                .sheet(isPresented: $sheetIsPresented) {
                    SheetView()
                        .presentationDetents([.fraction(0.35), .fraction(1)])
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

