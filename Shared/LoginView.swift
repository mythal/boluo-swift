//

import SwiftUI

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var count: Int = 0;
    @Binding var isLoggedIn: Bool
    
    func login() {
        self.isLoggedIn = true
    }

    var body: some View {
        VStack(alignment: .center){
            Text("Boluo \(count)")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.vertical, 20)
            TextField("Username", text: $username)
            SecureField("Password", text: $password)
            Button("Login", action: login)
        }.padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginView(isLoggedIn: .constant(false))
        }
    }
}
