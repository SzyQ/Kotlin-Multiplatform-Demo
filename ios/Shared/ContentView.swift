//
//  ContentView.swift
//  Shared
//
//  Created by Szymon Klimaszewski on 27/03/2022.
//

import SwiftUI
import common

struct ContentView: View {
    var body: some View {
        Text(Greeting().greeting())
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
