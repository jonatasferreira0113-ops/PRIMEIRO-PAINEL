import SwiftUI

struct ContentView: View {
    @State private var mensagem = "Olá! 👋"

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            VStack(spacing: 25) {
                Text("Meu primeiro App")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                Text(mensagem)
                    .foregroundColor(.white)

                Button("Clique aqui") {
                    mensagem = "Botão pressionado!"
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(12)
            }
            .padding(30)
        }
    }
}
