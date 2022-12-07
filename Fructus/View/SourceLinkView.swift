//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Olha Khomlyak on 7.12.2022.
//

import SwiftUI

struct SourceLinkView: View {
    
    var fruit: Fruit
    
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://en.wikipedia.org/wiki/\(fruit.title)")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView(fruit: fruitsData[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
