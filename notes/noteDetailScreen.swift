//
//  noteDetailScreen.swift
//  notes
//
//  Created by Marvis Ighedosa on 09/10/2023.
//

import SwiftUI

struct noteDetailScreen: View {
    var note:NoteDataMode
    @State var showSheet = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack{
            Text(note.body)
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 600, alignment: .topLeading)
                .frame(maxWidth: .infinity)
                .padding(24)
                .background(.gray.opacity(0.15))
                .cornerRadius(24)
            Spacer()
            Button {
                showSheet = true
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack{
                    Image(systemName: "pencil")
                    Text("EDIT")
                        .font(.title3)
                        .fontWeight(.bold)
                }
                
                .padding(24)
                .foregroundColor(.black)
                .background(Color("SecondaryColor"))
                .cornerRadius(16)
                
                
            }.sheet(isPresented: $showSheet) {
                Input(note: note)
            }
            
            
            
            //            HStack{
            //                AsyncImage(url: URL(string:carDetails.carImage)){
            //                    image in
            //                    image
            //                    .resizable()
            //                    .frame(width:.infinity)
            //                    .cornerRadius(16)
            //                    .padding(.all,16)
            //                    .aspectRatio(contentMode: .fit)
            //                    } placeholder: {
            //                    ProgressView()
            //                }
            //            }
            //            VStack {
            //                Text("\(carDetails.carHeader)")
            //                    .fontWeight(.bold)
            //                    .font(.title)
            //                .padding(.bottom,8)
            //
            //                Text("\(carDetails.carDesc)")
            //                .font(.body)
            //
            //                .multilineTextAlignment(.center)
            //            }.padding(.all,24)
            //        }
            //        .padding(.all, 24)
        }
        .padding(.horizontal, 24)
    }
    
    struct noteDetailScreen_Previews: PreviewProvider {
        static var previews: some View {
            noteDetailScreen(note: NoteDataMode.claModel[0])
        }
    }
}
