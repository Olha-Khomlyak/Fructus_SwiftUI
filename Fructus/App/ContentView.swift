//
//  ContentView.swift
//  Fructus
//
//  Created by Olha Khomlyak on 5.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    var fruits:[Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical,4)        
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                                    Button(action:{
                isShowingSettings = true
            }){
                Image(systemName: "slider.horizontal.3")
            }
                .sheet(isPresented: $isShowingSettings, content: {
                    SettingsView()
                })
            )
        }//: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
