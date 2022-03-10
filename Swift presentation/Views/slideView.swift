//
//  slideView.swift
//  Swift presentation
//
//  Created by Samuel Högfeldt on 2022-03-10.
//

import SwiftUI



struct slideView: View {
    @StateObject var e = elements()
    @State var text = "hej"
    var body: some View {
        VStack{
            ForEach(e.texts, id: \.self){t in
            VStack{
                Text(t)}
        }
            Text("hello world")
            Button("text"){
                addText(t: "ny text")
                
            }.clipShape(Rectangle())
        }

    }
    
    func addText(t: String){
        e.texts.append(t)
    }
}

struct slideView_Previews: PreviewProvider {
    static var previews: some View {
        slideView()
    }
}
