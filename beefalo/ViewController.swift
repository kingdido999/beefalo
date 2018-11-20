//
//  ViewController.swift
//  beefalo
//
//  Created by Desmond Ding on 11/20/18.
//

import UIKit
import WebKit
import Alamofire
import AlamofireObjectMapper

class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let parameters: Parameters = [
            "url": "https://spreadprivacy.com/three-reasons-why-the-nothing-to-hide-argument-is-flawed/"
        ]
        
        Alamofire.request("https://peel.fun", method: .post, parameters: parameters).responseObject { (response: DataResponse<PeelResponse>) in
            let res = response.result.value
            
            let baseURL = URL(string:"")
            self.webView.loadHTMLString(res?.content ?? "", baseURL: baseURL)
        }
    }
}

