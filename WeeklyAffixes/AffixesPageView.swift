//
//  ContentView.swift
//  WeeklyAffixes
//
//  Created by Pierre-Yves TOUZAIN on 06/02/2022.
//

import SwiftUI

struct AffixesPageView: View {
    
    @StateObject private var viewModel: AffixesPageViewModel = AffixesPageViewModel(service: WeeklyAffixesService())
    
    var body: some View {
        ZStack {
            Color(red: 0.12, green: 0.12, blue: 0.12)
            VStack {
                Text("Affixes of this week")
                ForEach(viewModel.affixes) {
                    AffixCard(affix: $0)
                        .padding(20)
                        .fixedSize(horizontal: false, vertical: true)
                }
            }
            .padding(EdgeInsets(top: 24, leading: 0, bottom: 4, trailing: 0))
        }
        .ignoresSafeArea()
        .preferredColorScheme(.dark)
        .onAppear {
            viewModel.loadData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AffixesPageView()
    }
}
