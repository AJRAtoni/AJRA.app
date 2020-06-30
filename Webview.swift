//
//  Webview.swift
//  AJRA
//
//  Created by Antonio Jesus Ruiz Andreu on 6/24/20.
//

import Foundation
import SwiftUI
import WebKit

struct Webview: UIViewRepresentable {
    
    var url: String
    
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
        
        let request = URLRequest(url: url)
        let wkWebview = WKWebView ()
        wkWebview.load(request)
        return wkWebview
        
        
    }
    
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }

}

struct Webview_Previews: PreviewProvider {
    static var previews: some View {
        Webview(url: "https://ajra.es")    }
}
