import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Fundo com gradiente
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.mint]), 
                           startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: 40) {
                // Título do App
                Text("Eventos Artesanais")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(radius: 5)

                // Botões estilizados
                VStack(spacing: 20) {
                    CustomButton(title: "Login")
                    CustomButton(title: "Cadastro")
                }
            }
        }
    }
}

// Componente para os botões
struct CustomButton: View {
    var title: String

    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 200, height: 50)
            .background(Color.white)
            .foregroundColor(.purple)
            .cornerRadius(25)
            .shadow(radius: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
