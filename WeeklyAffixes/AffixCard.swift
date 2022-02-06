//
//  AffixCard.swift
//  WeeklyAffixes
//
//  Created by Pierre-Yves TOUZAIN on 06/02/2022.
//

import SwiftUI

struct AffixCard: View {
    
    var affix: Affix
    
    init(affix: Affix) {
        self.affix = affix
    }
    
    var body: some View {
        ZStack {
            Color.white
            VStack(alignment: .leading, spacing: 4) {
                Text(affix.name)
                    .font(.system(size: 18.0)).bold()
                    .foregroundColor(Color.black)
                Text(affix.description)
                    .font(.system(size: 14.0))
                    .foregroundColor(Color.black)
            }
            .padding(EdgeInsets(top: 16, leading: 8, bottom: 16, trailing: 8))
        }
        .cornerRadius(10)
    }
}

struct AffixCard_Previews: PreviewProvider {
    static var previews: some View {
        let affix = Affix(id: 0, name: "Kekw", description: "Expecto Depleto", iconName: "", wowheadURLString: "")
        AffixCard(affix: affix)
    }
}
