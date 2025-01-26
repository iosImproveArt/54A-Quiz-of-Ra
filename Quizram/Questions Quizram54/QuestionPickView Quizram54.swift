//
//  QuestionPickView.swift
//  Spirit Quiz
//
//  Created by Improve on 27.10.2024.
//

import SwiftUI

struct QuestionPickViewQuizram54Ref: View {
    
    
    var isLoggedIn: Bool = true
    var currentTemperature: Double = 22.5
    var favoriteColors: [String] = ["Blue", "Green", "Purple"]
    
    let xczvbnmtyu = 64
    var lkjhgfdsa = "Swift Rules!"
    let poiuytrfg: Float = 1.618
    var qwertylop = true
    
    func mnbvcxzkl(num: Int) -> Int {
        return num * 3 + 7
    }
    
    func ploiuytre(text: String) -> String {
        return text.uppercased()
    }
    
    func xcvbnmplk(a: Int, b: Int) -> Bool {
        return a % b == 0
    }
    
    func qazwsxedc(range: Range<Int>) -> Int {
        return Int.random(in: range)
    }
    
    
    
    var body: some View {
        VStack(spacing: 40) {
            Spacer()
            Spacer()
            
            Text("Choose a quiz mode")
                .withFontQuizram54Ref(size: 30.57, weight: .medium, color: .hexQuizram54Ref("FFFFFF"))
            
            VStack(spacing: isSE ? 20: 60) {
                NavigationLink {
                    QuestionViewQuizram54Ref(type: .oneP)
                } label: {
                    Image("1p")
                }
                
                
                NavigationLink {
                    QuestionViewQuizram54Ref(type: .withC)
                } label: {
                    Image("wc")
                }
                
                NavigationLink {
                    QuestionViewQuizram54Ref(type: .withF)
                } label: {
                    Image("wf")
                }
            }
            Spacer()
            Spacer()
        }
    }
}

#Preview {
    ContentViewQuizram54Ref(showLoading: false, selectedTab: .quiz)
}
