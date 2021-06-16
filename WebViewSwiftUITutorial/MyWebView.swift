//
//  MyWebView.swift
//  WebViewSwiftUITutorial
//
//  Created by wooyeong kam on 2021/06/04.
//

import SwiftUI
import WebKit

// uikit의 uiview를 사용할 수 있도록 한다
struct MyWebView : UIViewRepresentable {
    
    var urlToLoad : String
    
    // uiview 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        // unwrapping
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        // 웹뷰 인스턴스 생성
        let webview = WKWebView()
        
        // 웹뷰 로드
        webview.load(URLRequest(url: url))
        
        return webview
    }
    
    // update ui view
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
        
    }
}

struct MyWebView_Previews : PreviewProvider {
    static var previews: some View{
        MyWebView(urlToLoad: "https://m.naver.com")
            .previewDevice("iPhone 11")
    }
}

