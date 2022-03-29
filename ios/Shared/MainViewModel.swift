//
//  MainViewModel.swift
//  Multiplatform-ios
//
//  Created by Szymon Klimaszewski on 29/03/2022.
//

import Foundation
import common

class MainViewModel : ObservableObject {
    
    private let getParticipantsUseCase = GetParticipantsUseCase()
    
    @Published var participants : [ParticipantModel]
    
    init() {
        participants = getParticipantsUseCase.invoke().map({ name in
            ParticipantModel(name: name)
        })
    }
    
    struct ParticipantModel : Identifiable, Hashable {
        var name: String
        var id = UUID()
    }
}
