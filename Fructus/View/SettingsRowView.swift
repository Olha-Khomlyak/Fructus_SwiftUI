//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Olha Khomlyak on 7.12.2022.
//

import SwiftUI

struct SettingsRowView: View {
    var label: String
    var value: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack{
            Divider().padding(.vertical,4)
            HStack{
                Text(label).foregroundColor(.gray)
                Spacer()
                if value != nil {
                    Text(value!)
                } else  if linkLabel != nil && linkDestination != nil{
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
                
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(label: "Developer", value: "Funduk")
    }
}
