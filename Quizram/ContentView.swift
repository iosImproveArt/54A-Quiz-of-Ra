//
//  ContentView.swift
//  Quizram
//
//  Created by Improve on 22.01.2025.
//

import SwiftUI

struct ContentViewQuizram54: View {
    @AppStorage("notificationsAvalible") var notificationsAvalible = true
    @State var showLoading = true
    @State var selectedTab: Tabs = .quiz
    
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
        ZStack {
            NavigationView {
                ZStack(alignment: .bottom) {
                    VStack {
                        topBar
                        
                        switch selectedTab {
                        case .quiz:
                            QuestionPickViewQuizram54()
                        case .profile:
                            ProfileViewQuizram54()
                        case .facts:
                            FactsViewQuizram54()
                        case .questions:
                            QuestionsViewQuizram54()
                        }
                        tapBar
                    }.backgroundQuizram54(2, padding: 0)
                }
            }
            
            LoadingViewSQ(showView: $showLoading)
                .opacity(showLoading ? 1: 0)
                .onChange(of: showLoading) { newValue in
                    AppDelegate.orientationLock = .portrait
                }
        }
    }
    
    private var topBar: some View {
        HStack {
            NavigationLink {
                PrivacyViewQuizram54(showLoading: .constant(true), fromMainView: true)
            } label: {
                Text("Privacy policy")
                    .withFontQuizram54(size: 16, weight: .light, color: .hexQuizram54("FFFFFF"))
            }
            
            Spacer()
            
            Button {
                notificationsAvalible.toggle()
                if notificationsAvalible {
                    NotificationManagerQuizram54.shared.createDailyNotification()
                } else {
                    NotificationManagerQuizram54.shared.removePendingNotifications()
                }
            } label: {
                Image("notification.label")
                    .grayscale(notificationsAvalible ? 0: 1)
            }
        }.padding(.horizontal)
    }
    
    private var tapBar: some View {
        HStack {
            Button {
                selectedTab = .quiz
            } label: {
                Image("tab 1")
                    .renderingMode(selectedTab == .quiz ? .template: .original)
                    .foregroundStyle(.white)
            }
            
            Spacer()
            
            Button {
                selectedTab = .profile
            } label: {
                Image("tab 2")
                    .renderingMode(selectedTab == .profile ? .template: .original)
                    .foregroundStyle(.white)
            }
            
            Spacer()
            
            Button {
                selectedTab = .facts
            } label: {
                Image("tab 3")
                    .renderingMode(selectedTab == .facts ? .template: .original)
                    .foregroundStyle(.white)
            }
            
            Spacer()
            
            Button {
                selectedTab = .questions
            } label: {
                Image("tab 4")
                    .renderingMode(selectedTab == .questions ? .template: .original)
                    .foregroundStyle(.white)
            }
        }.padding(.horizontal, 40)
            .padding(.vertical)
            .padding(.bottom, 50)
            .background {
                Color.hexQuizram54("E5AD7C")
                    .opacity(0.65)
                .edgesIgnoringSafeArea(.all)
            }
            .cornerRadius(41)
            .padding(.bottom, isSE ? -50: -60)
    }
}

#Preview {
    ContentViewQuizram54(showLoading: false)
}


enum Tabs {
    case quiz
    case profile
    case facts
    case questions
}

