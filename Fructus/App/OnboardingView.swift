//
//  OnboardingView.swift
//  Fructus
//
//  Created by Olha Khomlyak on 6.12.2022.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){ item in
                FruitCardView(fruit: item)
            }
        } //: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
