//
//  noteDataModel.swift
//  notes
//
//  Created by Marvis Ighedosa on 09/10/2023.
//

import Foundation

struct NoteDataMode: Hashable, Codable{
    let body:String
    let date:String
    }

extension NoteDataMode {
    
    static var claModel = [
    NoteDataMode(body: "First note, Click to edit", date: "22/04/23")    ]
    
}

func saveNote(text:String) {             
    let currentNote = NoteDataMode(body: text, date: "")
    NoteDataMode.claModel.append(currentNote)
}

//return a notemodel
class UserDefaultManager  {
   static let shared = UserDefaultManager()
func saveItem() {
    if let encodedData = try? JSONEncoder().encode(NoteDataMode.claModel) {
        UserDefaults().set(encodedData, forKey: "Body")
    }
}
    func getItem(){
        guard
            let savedData = UserDefaults.standard.data(forKey: "Body"),
            let decodedData = try? JSONDecoder().decode([NoteDataMode].self, from: savedData) else {return}
        NoteDataMode.claModel = decodedData
    }
        
}

//
////Create a custom type that has Animal, name and the color , Create an array of that animal and pass that into your view
//
//
//struct Animal{
//    var name:String
//    var color:Color
//    var textColor:Color
//}
//
