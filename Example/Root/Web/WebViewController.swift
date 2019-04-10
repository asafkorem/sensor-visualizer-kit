//
//  WebViewController.swift
//  SensorVisualizer
//
//  Created by Joseph Blau on 6/25/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.apple.com")!
        webView.load(URLRequest(url: url))
    }
}
