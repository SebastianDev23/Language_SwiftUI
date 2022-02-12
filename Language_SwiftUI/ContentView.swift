//
//  ContentView.swift
//  Language_SwiftUI
//
//  Created by Sebastian Kl
//

import SwiftUI

struct ContentView: View {
    
    
    
    
    @AppStorage("language") var language: String = ""
    
    
    let text: LocalizedStringKey = "Hello"
    
    
    var body: some View {
        
        VStack {
        
        Text("hello")
        Text("Willkommen")
        
            Button {
                language = "en"
            } label: {
                Text("Change English")
            }
            .padding()
            Button {
                language = "de"
            } label: {
                Text("Change Germany")
            }

        
        
        }
        .environment(\.locale, .init(identifier: language))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(language: "en")
       
    }
}
