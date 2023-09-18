//
//  GeometryReaderBootCamp.swift
//  SwitftulThinkingContinuedLearning
//
//  Created by Thomas Ostrander on 8/21/23.
//

import SwiftUI

struct GeometryReaderBootCamp: View {
    
    func getPercentage(geo: GeometryProxy) -> Double {
        let maxDistance = UIScreen.main.bounds.width / 2
        let currentX = geo.frame(in: .global).minX
        return Double(1 - (currentX / maxDistance))
    }
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack {
                ForEach(0..<20) { Index in
                    GeometryReader { geometry in
                        RoundedRectangle(cornerRadius: 20.0)
                            .rotation3DEffect(
                                Angle(degrees: getPercentage(geo: geometry) * 40),
                                                      axis: /*@START_MENU_TOKEN@*/(x: 0.0, y: 1.0, z: 0.0)/*@END_MENU_TOKEN@*/
                            )
                    }
                    .frame(width: 300, height: 250)
                    .padding()
                }
            }
        })
        
        
        
        
        
        
        
        
        
        
        
        
        
        
//        GeometryReader { geometry in
//            HStack(spacing: 0) {
//                Rectangle().fill(Color.red)
//                    .frame(width: geometry.size.width * 0.666)
//                Rectangle().fill(Color.blue)
//            }
//        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    GeometryReaderBootCamp()
}
