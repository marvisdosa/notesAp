////
////  listLearning.swift
////  notes
////
////  Created by Marvis Ighedosa on 27/10/2023.
////
//
//import SwiftUI
//
//struct listLearning: View {
//    @State var fruits:[String] = [
//    "Banana" , "Mango" , "Cherry" , "Avocado"
//    ]
//    var body: some View {
//        NavigationView {
//            ZStack{
//                List {
//                    ForEach(fruits , id: \.self){ x in
//                        Text(x)
//                    }
//                    .onDelete(perform: deleteFruit)
//                }.listStyle(GroupedListStyle())
//            }
//            .navigationTitle("Fruits App")
//            .navigationBarItems(leading: EditButton())
//            }
//        
//    }
//    func deleteFruit(indexSet: IndexSet){
//        fruits.remove(atOffsets: indexSet)
//    }
//    func moveFruit (indexSet: IndexSet , offSet: Int){
//        fruits.move(fromOffsets: indexSet, toOffset: offSet)
//    }
//}
//
//struct listLearning_Previews: PreviewProvider {
//    static var previews: some View {
//        listLearning()
//    }
//}
//
//struct alertLearning: View {
//    @State var showAlert:Bool = false
//    @State var alertType: MyAlerts? = nil
//    enum MyAlerts {
//        case successful
//        case failed
//    }
//    var body: some View {
//        VStack{
//            Button("Frist Alert", action: {
//                alertType = .successful
//                showAlert.toggle()
//            })
//            
//            Button("Second Alert", action: {
//                alertType = .failed
//                showAlert.toggle()
//            })
//        }.alert(isPresented: $showAlert) {
//            getAlert()
//        }
//            }
//    
//    
//    func getAlert() -> Alert {
//        switch alertType {
//        case .successful :
//            return Alert(title: Text("Obob hope to work") , message: Text("Bad guy e go work"), dismissButton: .default(Text("Good bro")))
//        case .failed :
//            return Alert(title: Text ("Failed modafucka") , message: Text("Bad guy e go work"), dismissButton: .default(Text("Fuck off bro")))
//        default :
//            return Alert(title: Text("Default modafucka"))
//        }
//    }
//    
//}
//
//struct alertLearning_Previews: PreviewProvider {
//    static var previews: some View {
//        alertLearning()
//    }
//}
