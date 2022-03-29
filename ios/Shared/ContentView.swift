//
//  ContentView.swift
//  Shared
//
//  Created by Szymon Klimaszewski on 27/03/2022.
//

import SwiftUI
import common

struct ContentView: View {
    @ObservedObject var model = MainViewModel()
    
    var body: some View {
        Participants().environmentObject(model)
    }
}

struct Participants: View {
    @EnvironmentObject var model: MainViewModel
    
    var body: some View {
        List(model.participants) { participant in
            Text(participant.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
