import SwiftUI

@main
struct CraftlyApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LoginView()
            }
        }
    }
}

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Craftly")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            SecureField("Senha", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            Button(action: {
                // Ação de login
            }) {
                Text("Entrar")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            
            NavigationLink(destination: RegisterView()) {
                Text("Cadastre-se")
                    .foregroundColor(.purple)
            }
        }
        .padding()
    }
}

struct RegisterView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var phone: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Cadastro")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            TextField("Nome", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            TextField("Telefone", text: $phone)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            SecureField("Senha", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            SecureField("Confirme sua senha", text: $confirmPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            Button(action: {
                // Ação de cadastro
            }) {
                Text("Cadastrar")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
        }
        .padding()
    }
}

struct HomeView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Bem-vindo ao Craftly")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            NavigationLink(destination: EventCreationView()) {
                Text("Criar Novo Evento")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            
            NavigationLink(destination: BoxSelectionView()) {
                Text("Selecionar Box")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
        }
        .padding()
    }
}

struct EventCreationView: View {
    @State private var location: String = ""
    @State private var availableBoxes: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Criação de Evento")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            TextField("Local do evento", text: $location)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            TextField("Quantidade de boxes disponíveis", text: $availableBoxes)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            Button(action: {
                // Ação de criação do evento
            }) {
                Text("Criar Evento")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
        }
        .padding()
    }
}

struct BoxSelectionView: View {
    @State private var selectedBox: String = ""
    var body: some View {
        VStack(spacing: 20) {
            Text("Seleção de Box")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            TextField("Número do box", text: $selectedBox)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            Button(action: {
                // Ação de seleção de box
            }) {
                Text("Selecionar Box")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
        }
        .padding()
    }
}
