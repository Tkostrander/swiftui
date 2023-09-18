//
//  DragGestureBootCamp2.swift
//  SwitftulThinkingContinuedLearning
//
//  Created by Thomas Ostrander on 8/9/23.
//

import SwiftUI

struct DragGestureBootCamp2: View {
    
    @State var startingOffsetY: CGFloat = UIScreen.main.bounds.height * 0.85
    @State var currentDragOffsetY: CGFloat = 0
    @State var endingOffSetY: CGFloat = 0
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            MySignUpView()
                .offset(y: startingOffsetY)
                .offset(y: currentDragOffsetY)
                .offset(y: endingOffSetY)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            withAnimation(.spring()){
                                currentDragOffsetY = value.translation.height
                            }
                        }
                        .onEnded { value in
                            withAnimation(.spring()) {
                                if currentDragOffsetY < -150 {
                                    endingOffSetY = -startingOffsetY
                                    currentDragOffsetY = 0
                                    
                                } else if endingOffSetY != 0 && currentDragOffsetY > 150 {
                                    endingOffSetY = 0
                                    endingOffSetY = 0
                                } else {
                                currentDragOffsetY = 0
                            }
                        }
                    }
                )
            Text("\(currentDragOffsetY)")
        }
        .ignoresSafeArea(edges: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
    }
}


#Preview {
    DragGestureBootCamp2()
}

struct MySignUpView: View {
    var body: some View {
        VStack(spacing:20) {
            Image(systemName: "chevron.up")
                .padding(.top)
            Text("Sign Up")
                .font(.headline)
                .fontWeight(.semibold)
            
            Image(systemName: "flame.fill")
                .resizable()
                .scaledToFit()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
            Text("This is the description for our app.  This is my favorite swiftUI course and I recommend to all of my friends to subscribe to swiftful thinking")
                .multilineTextAlignment(.center)
            
            Text("CREATE AN ACCOUNT")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .font(.headline)
                .background(Color.black).cornerRadius(10)
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(30)
    }
}
