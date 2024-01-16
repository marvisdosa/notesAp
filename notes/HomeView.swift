//
//  normalStart.swift
//  notes
//
//  Created by Marvis Ighedosa on 25/10/2023.
//

import SwiftUI

struct HomeView: View {
    @State var note: [NoteDataMode]
    @State var textfield = ""
    @State var showSheet = false
    var body: some View {
        NavigationView {
            VStack {
                List{ 
                    ForEach(note, id: \.self) { x in
                            NavigationLink {
                                noteDetailScreen(note: x)
                            } label: {
                                HStack{
                                    Image(systemName: "list.clipboard")
                                        .foregroundColor(.gray.opacity(0.5))
                                    Text(x.body).lineLimit(1)
                                }
                                .padding(.vertical, 24)
                                .padding(.horizontal, 8)
                            }
                            .listRowBackground(
                                Rectangle()
                                    .fill(.white)
                                    .padding(.vertical, 6)
                                    .cornerRadius(24)
                            )
                    }
                    .onDelete(perform: { index in
                        note.remove(atOffsets: index)
                    })
                    .listRowSeparator(.hidden)
                }
                
              
                HStack {
                    Button{
                            showSheet = true
                            
                        } label: {
                            Image(systemName: "plus")
                            Text("Create new note")
                        }
                        .padding(24)
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .frame(width: 300)
                        .frame(maxWidth: .infinity)
                        .background(Color("SecondaryColor"))
                        .cornerRadius(24)
                        .sheet(isPresented: $showSheet) {
                            Input(note: NoteDataMode(body: "", date: "")
                            )
                    }
                }
                .padding(.horizontal, 16)
                
                
            }
            .background(.gray.opacity(0.1))
            .onAppear{
//                UserDefaultManager.shared.getItem()
            }
            .toolbar {
                Button {
                    UserDefaultManager.shared.getItem()
                    note = NoteDataMode.claModel
                    
                } label: {
                    Image(systemName: "arrow.clockwise")
                }
            }
            
            .navigationTitle("Marvis Notes")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(note: NoteDataMode.claModel, showSheet: false)
    }
}

