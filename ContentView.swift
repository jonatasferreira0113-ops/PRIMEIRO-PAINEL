import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        RemotePanel()
            .ignoresSafeArea(.all)
    }
}

struct RemotePanel: UIViewRepresentable {

    func makeUIView(context: Context) -> WKWebView {

        let configuration = WKWebViewConfiguration()

        let webView = WKWebView(
            frame: .zero,
            configuration: configuration
        )

        webView.scrollView.contentInsetAdjustmentBehavior = .never
        webView.scrollView.bounces = false

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
