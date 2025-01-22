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
                    .opacity(selectedTab == .quiz ? 1: 0.6)
            }
            
            Spacer()
            
            Button {
                selectedTab = .profile
            } label: {
                Image("tab 2")
                    .opacity(selectedTab == .profile ? 1: 0.6)
            }
            
            Spacer()
            
            Button {
                selectedTab = .facts
            } label: {
                Image("tab 3")
                    .opacity(selectedTab == .facts ? 1: 0.6)
            }
            
            Spacer()
            
            Button {
                selectedTab = .questions
            } label: {
                Image("tab 4")
                    .opacity(selectedTab == .questions ? 1: 0.6)
            }
        }.padding(.horizontal, 40)
            .padding(.vertical)
            .padding(.bottom, 50)
            .background {
                Color.hexQuizram54("E57CA4")
                    .opacity(0.85)
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

