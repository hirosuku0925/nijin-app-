import SwiftUI
import WebKit

struct ContentView: View {
    // 表示したいWebサイトのURL
    let url = URL(string: "https://www.nijin.app/")!
    
    var body: some View {
        // WebViewを呼び出す
        WebView(url: url)
            .edgesIgnoringSafeArea(.all) // 画面全体（ノッチやホームバーの端まで）表示させる
    }
}

// SwiftUIでWebViewを使うための橋渡し用構造体
struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
