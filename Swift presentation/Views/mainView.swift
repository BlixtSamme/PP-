//
//  mainView.swift
//  Swift presentation
//
//  Created by Samuel Högfeldt on 2022-03-10.
//

import SwiftUI

class elements: ObservableObject{
    @Published var texts: [String] = ["hej"]
}

struct mainView: View {
    @StateObject var el = elements()
    @State var texts: [String]  = ["hej"]
    var body: some View {
        VStack{
            Spacer()
                .frame(maxHeight: 50)
            HStack{
                Button("text"){
                    el.texts.append("Hej")
                }.clipShape(Rectangle())
                Button("shapes"){
                }
            }.background(Color.red)
            Spacer()
                .frame(maxHeight: 100)
         
            slideView(e: el)
            Spacer()
        }
    }
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}
