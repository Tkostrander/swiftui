//
//  MaskBootCamp.swift
//  SwitftulThinkingContinuedLearning
//
//  Created by Thomas Ostrander on 9/3/23.
//

import SwiftUI

struct MaskBootCamp: View {
    
    @State var rating: Int = 2
    
    var body: some View {
        ZStack {
            starsView
                .overlay {
                    GeometryReader { geometry in
                        ZStack(alignment: .leading){
                            Rectangle()
                                .foregroundColor(.yellow)
                                .frame(width: CGFloat(rating) / 5 * geometry.size.width)
                        }
                    }
                }
        }
        
//        private var overlayView: some View {
//            
//        }
        
        
    
    }
    private var starsView: some View {
        HStack {
            ForEach(1..<6) { index in
                Image(systemName: "star.fill")
                    .font(.largeTitle)
                    .foregroundColor(Color.gray)
                    .onTapGesture {
                        rating = index
                    }
                }
            }
        }
}

#Preview {
    MaskBootCamp()
}
