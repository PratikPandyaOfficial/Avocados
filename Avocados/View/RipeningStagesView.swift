//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Drashti on 21/12/23.
//

import SwiftUI

struct RipeningStagesView: View {
    // MARK: - Properties
    var ripeningStages: [Ripening] = ripeningData
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            Spacer()
            VStack{
                HStack(alignment:.center, spacing: 25){
                    ForEach(ripeningStages) { stage in
                        RipeningView(ripening: stage)
                    }
                }
            }
            .padding(.vertical)
            .padding(.horizontal, 25)
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    RipeningStagesView()
}
