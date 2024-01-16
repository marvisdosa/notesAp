//
//  ContentView.swift
//  notes
//
//  Created by Marvis Ighedosa on 09/10/2023.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        HomeView(note: NoteDataMode.claModel, showSheet: false )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//
//struct noteListView: View {
//    @State var listThumbnailImage  = noteDataMode(carImage: "https://img.etimg.com/thumb/width-1200,height-900,imgsize-854852,resizemode-75,msid-72473282/industry/auto/cars-uvs/mercedes-benz-cars-to-be-pricier-by-up-to-3-from-january-2020.jpg", carHeader: "CoupeBenz 205", carDesc: "The Mercedes-Benz CLA class is a series of luxury compact executive cars manufactured by Mercedes-Benz since 2013. The first generation was a four-door sedan based on the platform of the W176 A-Class and W246 B-Class compact cars, marketed as a four-door coupé")
//
//    var body: some View{
//        HStack {
//            AsyncImage(url: URL(string:listThumbnailImage.carImage)){
//                image in image
//                    .resizable()
//                    .frame(width:56, height:48)
//            } placeholder: {
//                ProgressView()
//            }
//                .cornerRadius(6)
//                .aspectRatio(contentMode: .fill)
//
//            Text("Notes")
//        }.padding(.vertical, 4)
//    }
//}
