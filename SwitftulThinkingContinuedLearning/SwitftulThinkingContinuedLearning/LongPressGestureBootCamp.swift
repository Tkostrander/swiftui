//
//  LongPressGestureBootCamp.swift
//  SwitftulThinkingContinuedLearning
//
//  Created by Thomas Ostrander on 8/7/23.
//

import SwiftUI

struct LongPressGestureBootCamp: View {
    
    @State private var isComplete: Bool = false
    @State private var isSuccess: Bool = false
    
    var body: some View {
        
        VStack {
            Rectangle()
                .fill(isSuccess ? Color.green : Color.blue)
                .frame(maxWidth: isComplete ? .infinity : 0)
                .frame(height: 55)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.gray)
            
            HStack {
                Text("Click Here")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                .cornerRadius(10)
                //.onLongPressGesture(minimumDuration: 1.0, maximumDistance: 50) { (isPressing) in
                    // start of press -> min Duration
                    
                
       
                

                Text("Reset")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                .cornerRadius(10)
                
            }
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
//        Text(isComplete ? "COMPLETED" : "Not Completed")
//            .padding()
//            .padding(.horizontal)
//            .background(isComplete ? Color.green : Color.gray)
//            .cornerRadius(10)
////            .onTapGesture {
////                isComplete.toggle()
////            }
//            .onLongPressGesture(minimumDuration: 5.0, maximumDistance: 50) {
//                isComplete.toggle()
//            }
        
    }
}

#Preview {
    LongPressGestureBootCamp()
}
