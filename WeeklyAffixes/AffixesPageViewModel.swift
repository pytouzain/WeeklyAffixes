//
//  AffixesPageViewModel.swift
//  WeeklyAffixes
//
//  Created by Pierre-Yves TOUZAIN on 06/02/2022.
//

import Foundation
import Combine

class AffixesPageViewModel: ObservableObject {
    
    private var cancellable: AnyCancellable?
    
    @Published var affixes: [Affix] = []
    
    private let service: WeeklyAffixesService
    
    init(service: WeeklyAffixesService) {
        self.service = service
    }
    
    public func loadData() {
        cancellable = service.getWeeklyAffixes(.weeklyAffixes)
            .sink(receiveCompletion: { _ in
                
            }, receiveValue: { weeklyAffixes in
                print(weeklyAffixes)
                self.affixes = weeklyAffixes.affixes
            })
    }
}
