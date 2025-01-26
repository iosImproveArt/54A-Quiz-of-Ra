

import SwiftUI

struct PrivacyViewQuizram54Ref: View {
    @AppStorage("firstInApp") var firstInApp = true
    @Environment(\.dismiss) var dismiss
    @Binding var showLoading: Bool
    var fromMainView: Bool = false
    
    @AppStorage("urlString") var urlString = ""
    
    var bg: Color {
        urlString.isEmpty ? Color.hexQuizram54Ref("#C34820"): .black
    }
    
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
        VStack {
            if urlString.isEmpty && fromMainView {
                HStack(spacing: 25) {
                    Button {
                        AppDelegate.orientationLock = .portrait
                        showLoading = false
                        dismiss()
                    } label: {
                        Image(systemName: "return.left")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 30)
                            .foregroundColor(.white)
                    }
                }.frame(maxWidth: .infinity, alignment: .leading)
                    .overlay {
                        Text("Privacy Policy")
                            .withFontQuizram54Ref(size: 33, weight: .bold)
                    }
                    .padding([.top, .leading])
                
            }
            
            WebViewContainer(urlString: urlString)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                }
                .padding(.top, 7)
                .padding(.bottom,  1)
                .background(bg)
            
            if urlString.isEmpty && !fromMainView {
                HStack {
                    Button {
                        AppDelegate.orientationLock = .portrait
                        showLoading = false
                        firstInApp = false
                        dismiss()
                    } label: {
                        Image("green.button.bg")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .overlay {
                                Text("Accept")
                                    .withFontQuizram54Ref(size: 18, weight: .regular, color: .hexQuizram54Ref("3B0551"))
                            }
                    }
                    
                    Spacer()
                    
                    Button {
                        AppDelegate.orientationLock = .portrait
                        showLoading = false
                        firstInApp = false
                        dismiss()
                    } label: {
                        Image("green.button.bg")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .overlay {
                                Text("Reject")
                                    .withFontQuizram54Ref(size: 18, weight: .regular, color: .hexQuizram54Ref("3B0551"))
                            }
                    }
                    
                }.padding([.horizontal, .bottom])
            }
        }
        .background(bg)
        .onChange(of: urlString) { new in
            if urlString == "error" {
                showLoading = false
                dismiss()
            }
        }
        .navigationBarBackButtonHidden()
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

#Preview {
    PrivacyViewQuizram54Ref(showLoading: .constant(true), fromMainView: false)
}
