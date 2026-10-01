import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        FullScreenWebView()
            .ignoresSafeArea(.all)
    }
}

struct FullScreenWebView: UIViewRepresentable {

    func makeUIView(context: Context) -> WKWebView {

        let webView = WKWebView(frame: UIScreen.main.bounds)

        // Ocupa toda a janela
        webView.translatesAutoresizingMaskIntoConstraints = false

        // Não adicionar espaço para Safe Area
        webView.insetsLayoutMarginsFromSafeArea = false
        webView.scrollView.contentInsetAdjustmentBehavior = .never
        webView.scrollView.contentInset = .zero
        webView.scrollView.scrollIndicatorInsets = .zero

        webView.scrollView.bounces = false

        // Fundo
        webView.isOpaque = true
        webView.backgroundColor = .black

        // URL do painel
        let url = URL(
            string: "https://jonatasferreira0113-ops.github.io/PRIMEIRO-PAINEL/"
        )!

        var request = URLRequest(url: url)
        request.cachePolicy = .reloadIgnoringLocalCacheData

        webView.load(request)

        return webView
    }

    func updateUIView(
        _ webView: WKWebView,
        context: Context
    ) {
    }
}
