//
//  HapticsBootCamp.swift
//  SwitftulThinkingContinuedLearning
//
//  Created by Thomas Ostrander on 9/11/23.
//

import SwiftUI


class HapticManager {
    
    static let instance = HapticManager()  // Singleton
    
    func notification(type: <#T##notificationType: UINotificationFeedbackGenerator.FeedbackType##UINotificationFeedbackGenerator.FeedbackType#>) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred()
    }
    func impact() {
        
    }
    
}

struct HapticsBootCamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    HapticsBootCamp()
}
