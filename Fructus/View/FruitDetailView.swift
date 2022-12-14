//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Olha Khomlyak on 7.12.2022.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit:Fruit
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center,spacing: 20) {
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRITIONS
                        FruitNutrientsView(fruit: fruit)
                        
                        //SUBHEADER
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //LINK
                        SourceLinkView(fruit: fruit)
                            .padding(.top,10)
                            .padding(.bottom,40)
                        
                    }//: VSTACK
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640,alignment: .center)
                }//: VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//: SCROLLVIEW
            .edgesIgnoringSafeArea(.top)
            .onAppear {
                UIScrollView.appearance().bounces = false
            }
        }//: NAVIGATON
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
