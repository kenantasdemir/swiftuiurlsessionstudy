//
//  ContentView.swift
//  swiftuiurlsessionstudy
//
//  Created by kenan on 29.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Open terminal").onAppear{
          
    let kdao = CategoryDAO()
            kdao.getAllCategories()
         
   
         
        }
    }
}

#Preview {
    ContentView()
}
