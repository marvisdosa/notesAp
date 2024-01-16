////
////  obScreen.swift
////  notes
////
////  Created by Marvis Ighedosa on 21/10/2023.
////
//
//import SwiftUI
//
//struct obScreen: View {
//    @StateObject var animalNames = AnimalViewModel()
//    
//    var body: some View {
//        NavigationView{
//            ZStack {
//                animalNames.animal?.color.ignoresSafeArea()
//                HStack{
//                    Button {
//                        animalNames.changeColor(color: .red, name: "Cat", textColor: .white)
//                    } label: {
//                        Text("Cat").foregroundColor(animalNames.animal?.textColor)
//                    }
//
//                    Button {
//
//                    } label: {
//
//                    }
//                    Button {
//
//                    } label: {
//
//                    }
//
//                }
//            }
//
//        }
//    }
//}
//
//struct obScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        obScreen()
//    }
//}
