//
//  ContentView.swift
//  DynamicList-navigation-images-Smaple
//
//  Created by chandrashekhar_h on 09/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                Text("One")
                Text("Two")
                Text("Three")
                Text("Four")
                Text("Five")
                Text("Fix")
                Text("Seven")
                Text("Eight")
                Text("Nine")
                Text("Ten")
            }.navigationTitle("Rank List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
