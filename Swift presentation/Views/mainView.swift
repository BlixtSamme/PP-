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
    var slide = slideView()
    @State var texts: [String]  = ["hej"]
    var body: some View {
        VStack{
            Spacer()
                .frame(maxHeight: 50)
            HStack{
                Button("text"){
                    slide.e.texts.append("nytt")
                }.clipShape(Rectangle())
                Button("shapes"){
                }
            }.background(Color.red)
            Spacer()
                .frame(maxHeight: 100)
         
            slide
            Spacer()
        }
    }
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}
