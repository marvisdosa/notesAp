//
//  input.swift
//  notes
//
//  Created by Marvis Ighedosa on 28/10/2023.
//

import SwiftUI

struct Input: View {
    
    var note:NoteDataMode
    @State var noteText = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack{
            
            Text("Create Note")
                .padding(.top, 16)
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            
            HStack {
                TextField(note.body.isEmpty ? "Enter Note content" : note.body, text: $noteText, axis: .vertical)
                    .frame(height: 600, alignment: .topLeading)
                    .frame(maxWidth: .infinity)
                    .padding(24)
                    .background(.gray.opacity(0.15))
                    .cornerRadius(24)
                
            }
            
            Spacer()
            
            
            Button{
                saveNote(text: noteText)
                UserDefaultManager.shared.saveItem()
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Save Note")
                    .padding(24)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .frame(width: 300)
                    .frame(maxWidth: .infinity)
                    .background(.black)
                    .cornerRadius(24)
            }
        }
        .padding(16)
        
        
    }
}

struct input_Previews: PreviewProvider {
    static var previews: some View {
        Input(note: .claModel[0])
    }
}

//
//class dogModel : ObservableObject {
//    @Published var name = ""
//    init() {
//        getName()
//    }
//
//
//    func saveName(){
//        UserDefaults.standard.set(name, forKey: "dogName")
//        getName()
//    }
//
//    func getName(){
//        guard let testName = UserDefaults.standard.string(forKey: "dogName") else {return}
//        name = testName
//    }
//
//}
