import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        RemotePanel()
            .ignoresSafeArea()
    }
}

struct RemotePanel: UIViewRepresentable {

    let url = URL(
        string: "https://jonatasferreira0113-ops.github.io/PRIMEIRO-PAINEL/"
    )!

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.scrollView.bounces = false
        webView.load(URLRequest(url: url))
        return webView
    }

    func updateUIView(
        _ webView: WKWebView,
        context: Context
    ) {
    }
}
