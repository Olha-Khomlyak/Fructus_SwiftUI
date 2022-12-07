//
//  StartButtonView.swift
//  Fructus
//
//  Created by Olha Khomlyak on 6.12.2022.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding:Bool?
    
    //MARK: - BODY
    var body: some View {
        Button(action:{
           isOnboarding = false
        }) {
            HStack{
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal,16)
            .padding(.vertical,10)
            .background(
                Capsule().stroke(Color.white, lineWidth: 1.25)
            )
        }
        .accentColor(.white)

    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}