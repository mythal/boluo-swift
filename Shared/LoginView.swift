//

import SwiftUI

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    @Binding var isLoggedIn: Bool
    
    func login() {
        self.isLoggedIn = true
    }
    
    var body: some View {
        ZStack{
            Colors.Background.ignoresSafeArea()
            VStack(alignment: .center){
                VStack(alignment: .leading){
                    Text("菠萝")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("游玩桌面角色扮演游戏、微酸香甜。")
                }.padding()
                TextField("Username", text: $username).font(.title)
                SecureField("Password", text: $password).font(.title)
                Button(action: login) {
                    VStack {
                        Text("Login")
                            .padding()
                    }.background(Colors.DarkerBackground)
                }
            }
        }.foregroundColor(Colors.Text)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginView(isLoggedIn: .constant(false))
        }
    }
}
