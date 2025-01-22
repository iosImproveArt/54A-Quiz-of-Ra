
import SwiftUI

struct ProfileViewQuizram54: View {
    @Environment(\.dismiss) var dismiss
    
    @State var userPhoto = ""
    @State var userName = ""
    @State var userNickname = ""
    
    @State var showActionSheetBB = false
    @State private var showImagePickerBB = false
    @State private var showCameraPickerBB = false
    @State var ev = false
    @FocusState var textfield
    @State var showAlert = false
    
    let fieldsColor = Color.hexQuizram54("B35C5C")
    
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
            Button {
                showActionSheetBB = true
            } label: {
                Group {
                    if userPhoto.isEmpty {
                        Image("user.label")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 200, maxHeight: 200)
                    } else {
                        Image(uiImage: UIImage(data: Data(base64Encoded: userPhoto)!)!)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                            .frame(maxWidth: 200, maxHeight: 200)
                    }
                }.padding(.top)
            }.onAppear {
                userPhoto = UserDefaults.standard.string(forKey: "userPhoto") ?? ""
                userName = UserDefaults.standard.string(forKey: "userName") ?? ""
                userNickname = UserDefaults.standard.string(forKey: "userNickname") ?? "IamNewUser"
            }
            
            Spacer()
            
            HStack(spacing: 8) {
                
                Image("textfield")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        TextField("Whats your name?", text: $userName)
                            .padding(.horizontal, 15)
                            .padding(.horizontal, 6)
                            .foregroundStyle(.white)
                    }
            }.padding(.vertical)
            
            
            HStack(spacing: 8) {
                Image("textfield")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        TextField("Whats your nickname?", text: $userNickname)
                            .padding(.horizontal, 15)
                            .padding(.horizontal, 6)
                            .foregroundStyle(.white)
                    }
            }.padding(.bottom)
            
            
            Spacer()
            
            HStack {
                Button {
                    UserDefaults.standard.set(userPhoto, forKey: "userPhoto")
                    UserDefaults.standard.set(userName, forKey: "userName")
                    UserDefaults.standard.set(userNickname, forKey: "userNickname")
                    showAlert = true
                } label: {
                    Image("green.button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .overlay {
                            Text("Save")
                                .withFontQuizram54(size: 18.6, weight: .regular)
                        }
                }
                
                Button {
                    UserDefaults.standard.set("", forKey: "userPhoto")
                    UserDefaults.standard.set("", forKey: "userName")
                    UserDefaults.standard.set("", forKey: "userNickname")
                    userName = ""
                    userNickname = ""
                    userPhoto = ""
                } label: {
                    Image("green.button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .overlay {
                            Text("Delete")
                                .withFontQuizram54(size: 18.6, weight: .regular)
                        }
                }
            }
            
            Spacer()
            
        }.padding(.horizontal)
            .animation(.easeInOut, value: textfield)
            .actionSheet(isPresented: $showActionSheetBB) {
                ActionSheet(title: Text(""), buttons: [
                    .default(Text("Camera")) {
                        showCameraPickerBB = true
                    },
                    .default(Text("Photo Library")) {
                        showImagePickerBB = true
                    },
                    .cancel() // Кнопка скасування
                ])
            }
            .sheet(isPresented: $showImagePickerBB) {
                ImagePickerViewBB(showImagePicker: self.$showImagePickerBB) { image in
                    if let image = image {
                        if let compressedData = image.jpegData(compressionQuality: 0.01) {
                            self.userPhoto = compressedData.base64EncodedString()
                        }
                    }
                }.edgesIgnoringSafeArea(.all)
            }
            .sheet(isPresented: $showCameraPickerBB) {
                CameraPickerView(showImagePicker: self.$showCameraPickerBB) { image in
                    if let image = image {
                        if let compressedData = image.jpegData(compressionQuality: 0.01) {
                            self.userPhoto = compressedData.base64EncodedString()
                        }
                    }
                }.edgesIgnoringSafeArea(.all)
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Saved!"),
                    message: Text("Successful data saving"),
                    dismissButton: .default(Text("OK"))
                )
            }
    }
}

#Preview {
    ContentViewQuizram54(showLoading: false, selectedTab: .profile)
}


