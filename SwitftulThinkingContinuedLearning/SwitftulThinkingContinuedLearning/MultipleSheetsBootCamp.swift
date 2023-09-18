//
//  MultipleSheetsBootCamp.swift
//  SwitftulThinkingContinuedLearning
//
//  Created by Thomas Ostrander on 8/25/23.
//

import SwiftUI


struct RandomModel: Identifiable {
    let id = UUID().uuidString
    let title: String
}

// 1 - Use a binding
// 2 - Use multiple .sheets
// 3 - Use $item




struct MultipleSheetsBootCamp: View {
    
    @State var selectedModel: RandomModel? = nil
    @State var showSheet: Bool = false
    @State var showSheet2: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Button 1") {
                selectedModel = RandomModel(title: "One")
                //showSheet.toggle()
            }
//            .sheet(isPresented: $showSheet, content: {
//                NextScreen(SelectedModel: RandomModel(title: "One"))
//            })
            Button("Button 2") {
                selectedModel = RandomModel(title: "Two")
                //showSheet2.toggle()
            }
//            .sheet(isPresented: $showSheet2, content: {
//                NextScreen(SelectedModel: RandomModel(title: "Two"))
//            })
        }
        .sheet(item: $selectedModel) { model in
            NextScreen(SelectedModel: model)
        }
//        .sheet(isPresented: $showSheet, content: {
//            NextScreen(SelectedModel: selectedModel)
//        })
    }
}

struct NextScreen: View {
    
    let SelectedModel: RandomModel
    
    var body: some View {
        Text(SelectedModel.title)
            .font(.largeTitle)
    }
}

#Preview {
    MultipleSheetsBootCamp()
}
